/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include<string>
#include<algorithm>

#include "c74_min.h"
#include "MidiFile.h"
#include "Options.h"

using namespace c74::min;


class lei_seq_alt : public object<lei_seq_alt> {
public:
    MIN_DESCRIPTION	{"seq object with seek feature"};
    MIN_TAGS		{"midi sequencer"};
    MIN_AUTHOR		{"leico"};
    MIN_RELATED		{"seq, follow, mtr, detonate"};

    inlet<>  input	       { this, "(anything) messages to seq_alt" };
    outlet<> message_out	 { this, "(int) when bang received, outs midi raw message from read midi file", "int" };
    outlet<> failed_out    { this, "(bang) when read file failed", "bang"};
    outlet<> read_done_out { this, "(bang) when success read midi file", "bang"};


    timer<> metro{ this,
      MIN_FUNCTION{

        std :: vector< smf :: MidiEvent > same_time_events;

        while(1){

          smf :: MidiEvent* currentevent = nullptr;
          if( ! goNext( &currentevent) ) break;

          same_time_events.push_back( *currentevent );

          smf :: MidiEvent* nextevent = nullptr;
          if( ! getEvent( &nextevent) ) break;
          
          if( nextevent -> tick == currentevent -> tick ) continue;

          metro.delay(
            ( nextevent -> seconds - currentevent -> seconds ) * 1000.
          );
          break;
        }

        if( same_time_events.empty() ) return {};



        std :: sort(
            same_time_events.begin()
          , same_time_events.end()
          , [](const smf :: MidiEvent& left, const smf :: MidiEvent& right){

            const int end = left.size() > right.size() ? right.size() : left.size();
            for( int i = 0 ; i < end ; ++ i )
              if( left[i] != right[i] ) 
                return left[i] < right[i];

            return true;
          }
        );

        for(const smf :: MidiEvent& e : same_time_events )
          OutputEvent(e);



        return {};


      }
    };

    

    lei_seq_alt( const atoms& args = {} ) : 
        _midifile       ( std :: make_unique< smf :: MidiFile  >() )
      , _eventcount     (0)
      , _is_readfile    (0)
      , _seekbar_seconds(0)
    {}







    message<> msg_bang{this, "bang",
      MIN_FUNCTION{


        if( inlet != 0 ) return {};

        smf :: MidiEvent *nextevent = nullptr;
        if( ! goNext(&nextevent) ) return {};

        OutputEvent(*nextevent);

        return {};
      }, ""
    };





    message<> start_midifile{ this, "start", 
      MIN_FUNCTION{

        if( inlet != 0 ) return {};

        smf :: MidiEvent* nextevent = nullptr;
        if( ! getEvent( &nextevent )) return {};

        metro.delay(nextevent -> seconds - _seekbar_seconds);

        return {};
      }, ""
    };


    message<> stop_midifile{ this, "stop", 
      MIN_FUNCTION{

        metro.stop();

        return {};
      }, ""
    };



    message<> seek{ this, "seek", 
      MIN_FUNCTION{

        if( args.size() == 0 ) return {};
        if( inlet       != 0 ) return {};


        if( args[0].type() != message_type :: float_argument && 
            args[0].type() != message_type :: int_argument ) 
        {
          cerr << "argument type does not number argument" << endl;
          return {};
        }

        const double sec = static_cast<double>(args[0]) / 1000.;

        if( sec < 0 ) { 
          cerr << "argument < 0 " << endl;
          return {};
        }


        metro.stop();

        double currentseconds    = _seekbar_seconds;
        int    currenteventcount = _eventcount;

        _eventcount = 0;

        smf :: MidiEvent* event = nullptr;

        while( getEvent(&event) ){
          if( sec > event -> seconds ){
            goNext(&event);
            continue;
          }

          // sec <= eventlist[e].seconds --------
          // eventlist.size() >= 2, seekbar より先に event があることが保証される
          _seekbar_seconds = sec;
          return {};
        }

        // end of file

        _seekbar_seconds = currentseconds;
        _eventcount      = currenteventcount;


        return {};
        
      }, ""
    };





    message<> read_midifile { this, "read", 
      MIN_FUNCTION{

        cout << "args size:" << endl;
        cout << args.size()  << endl;

        cout << "inlet" << endl;
        cout << inlet   << endl;

        if( args.size() == 0 ) return {};
        if( inlet       != 0 ) return {};

        if( args[0].type() != message_type :: symbol_argument ) {
          cerr << "argument type does not symbol argument" << endl;
          return {};
        }

        metro.stop();

        _is_readfile = 0;

        std :: string file_path = path(static_cast< std :: string>( args[0] ));
        cout << file_path << endl;

        _is_readfile = _midifile.get() -> read( file_path );

        if( _is_readfile == 0 ) {
          cerr << "failed read file" << endl;
          failed_out.send("bang");
          return {};
        }

        for( int i = 0, end = _midifile.get() -> size() ; i < end ; ++ i )
          cout << (*_midifile.get())[i].size() << endl;

        _midifile.get() -> doTimeAnalysis();
        _midifile.get() -> linkNotePairs();
        _midifile.get() -> joinTracks();


        _eventcount      = 0;
        _seekbar_seconds = 0;


        read_done_out.send("bang");


        return {};
      }, ""
    };
    // post to max window == but only when the class is loaded the first time

    message<> maxclass_setup { this, "maxclass_setup",
      MIN_FUNCTION {
        return {};
      }
    };

private :



    void OutputEvent(const smf :: MidiEvent& event){
      
      for( int i = 0, end = event.size() ; i < end ; ++ i )
        message_out.send( static_cast<int>( event[i] ) );

      return;
    }


    const bool getEvent(smf :: MidiEvent** event){

      smf :: MidiEventList* eventlist = nullptr;
      if( ! getEventList(&eventlist) ) return false;

      if( _eventcount >= eventlist -> size() ){
        cout << "end of file" << endl;
        return false;
      }

      *event = &(*_midifile.get())[0][_eventcount];
      return true;
    }


    const bool goNext(smf :: MidiEvent** event){
      if( ! getEvent( event ) ) return false;
      _seekbar_seconds = (*event) -> seconds;
      ++ _eventcount; 
      return true; 
    }




    const bool is_MidiFileReady(void){

      if( ! _midifile ) return false;

      if( _is_readfile == 0 ) { 
        cerr << "not yet read midi file" << endl;
        return false;
      }

      if(_midifile.get() -> getTrackCount() <= 0){
        cerr << "midi file looks empty." << endl;
        return false;
      }

      return  true;
    }


    const bool getEventList(smf :: MidiEventList** eventlist){

      if( ! is_MidiFileReady() ) return false;

      *eventlist = &(*_midifile.get())[0];
      return true;
    }





    std :: unique_ptr< smf :: MidiFile > _midifile;

    std :: size_t _eventcount;
    std :: size_t _is_readfile;
    
    double _seekbar_seconds;

};


MIN_EXTERNAL(lei_seq_alt);
