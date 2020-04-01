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


 

    lei_seq_alt( const atoms& args = {} ) : 
        _midifile       ( std :: make_unique< smf :: MidiFile  >() )
      , _eventcount     (0)
      , _is_readfile    (0)
      , _seekbar_seconds(0)
    {}



    message<> maxclass_setup { this, "maxclass_setup",
      MIN_FUNCTION {
        return {};
      }
    };



    message<> msg_bang{this, "bang",
      MIN_FUNCTION{

        const std :: string err_str = "msg_bang : ";


        if( inlet != 0 ) {
          cerr << err_str + "wrong inlet number : " + std :: to_string(inlet) << endl;
          return {};
        }
        smf :: MidiEvent *nextevent = nullptr;
        
        if( ! getEvent(&nextevent) ){
          cerr << err_str + "failed getEvent" << endl;
          return {};
        }

        OutputEvent(*nextevent);

        if( ! forwardEventCount() )
          cerr << err_str + "failed forwardEventCount" << endl;

        return {};
      }, ""
    };


    message<> terminal{this, "anything",
      MIN_FUNCTION{

        const std :: string err_str = "terminal function : ";

        if( args.empty() ) {
          cwarn << err_str << "no arguments, nothing happen" << endl;
          return {};
        }

        if( inlet != 0 ) {
          cerr << err_str << "wrong inlet number : " << std :: to_string(inlet) << endl;
          return {};
        }


        if(args[0].type() == message_type :: symbol_argument ) { 

          const std :: string message = args[0];


          if( message == "start") { 
            return start_seekbar();
          }
          
          if( message == "stop" ) { 
            return stop_seekbar();
          }

          c74 :: min :: atoms arguments = args;
          arguments.erase( arguments.begin() );

          if( arguments.empty() ) { 
            cerr << err_str << "arguments size = 0" << endl;
            return {};
          }

          if( message == "read") { 
            return read_file( arguments );
          }

          if( message == "seek") { 
            return move_seekbar( arguments );
          }

          cerr << "wrong type message : " << message << endl;
          return {};
        }

        cerr << "arg[0] is not symbol argument" << endl;
        return {};
      }, 
      R"(read [filename] : read midifile 
seek [msec] : move seekbar
start : start sequence from seekbar pos"
stop : stop sequence
)"
    };


private :

    timer<> metro{ this,
      MIN_FUNCTION{

        std :: string err_str = "metro function : ";


        std :: vector< smf :: MidiEvent > same_time_events;

        while(1){

          smf :: MidiEvent* currentevent = nullptr;
          if( ! getEvent( &currentevent) ) break;

          same_time_events.push_back( *currentevent );

          if( ! forwardEventCount() ){
            cerr << err_str + "failed forwardEventCount, count -> " + std :: to_string( _eventcount ) << endl;
            return{};
          }

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

   



    c74 :: min :: atoms start_seekbar(void){

      smf :: MidiEvent* nextevent = nullptr;
      if( ! getEvent( &nextevent )) return {};

      metro.delay(
        (nextevent -> seconds - _seekbar_seconds) * 1000.
      );

      return {};
    };








    c74 :: min :: atoms stop_seekbar(void){

      metro.stop();

      return {};
    };









    c74 :: min :: atoms move_seekbar(const c74 :: min :: atoms& args){

      const std :: string err_str = "seek function : ";

      if( args.size() == 0 ){
        cerr << err_str << "args size = 0" << endl;
        return {};
      }

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

      _eventcount = 0;

      smf :: MidiEvent* event = nullptr;

      while( getEvent(&event) ){
        if( sec > event -> seconds ){
          if( ! forwardEventCount() ){
            cerr << err_str + "failed forwardEventCount, count -> " + std :: to_string(_eventcount) << endl;
            return{};
          };
          continue;
        }

        // sec <= eventlist[e].seconds --------
        // eventlist.size() >= 2, seekbar より先に event があることが保証される
        _seekbar_seconds = sec;
        return {};
      }

      // end of file

      return {};

    };








    c74 :: min :: atoms read_file(const c74 :: min :: atoms& args){

      const std :: string err_str = "read_midifile : ";

      if( args.size() == 0 ){
        FailedReadFile( err_str + "args size = 0");
        return {};
      }


      if( args[0].type() != message_type :: symbol_argument ) {
        FailedReadFile( err_str + "argument type does not symbol argument");
        return {};
      }

      metro.stop();

      _is_readfile = 0;


      std :: string file_path;

      try{
        file_path = static_cast<std :: string>( path(static_cast< std :: string>( args[0] )) );
      }
      catch( std :: exception& e ){
        FailedReadFile( err_str + "failed convert path : " + e.what() );
        return {};
      }

      cout << file_path << endl;

      try {
        _is_readfile = _midifile.get() -> read( file_path );
      }
      catch( std :: exception& e){
        FailedReadFile( err_str + "read : " + e.what() );
        _is_readfile = 0;
        return {};
      }

      if( _is_readfile == 0 ) {
        FailedReadFile( err_str + "failed read file" );
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
    };



    void FailedReadFile( const std :: string& err_str ){

      cerr << err_str << endl;
      failed_out.send("bang");

      return;

    }


    void OutputEvent(const smf :: MidiEvent& event) {

      for( int i = 0, end = event.size() ; i < end ; ++ i )
        message_out.send( static_cast<int>( event[i] ) );

      return;
    }


    const bool is_MidiFileReady(void) {

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


    const bool getEventList(smf :: MidiEventList** eventlist) {

      if( ! is_MidiFileReady() ) return false;

      *eventlist = &(*_midifile.get())[0];
      return true;
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

    const bool forwardEventCount(void){

      smf :: MidiEventList *eventlist;
      smf :: MidiEvent *event;
      if( ! getEvent    ( &event ) )     return false;
      if( ! getEventList( &eventlist ) ) return false;

      _seekbar_seconds = event -> seconds;
      _eventcount      = (_eventcount + 1) < eventlist -> size() ? (_eventcount + 1) : _eventcount ;

      return true;
    }







    std :: unique_ptr< smf :: MidiFile > _midifile;

    std :: size_t _eventcount;
    std :: size_t _is_readfile;
    
    double _seekbar_seconds;

};


MIN_EXTERNAL(lei_seq_alt);
