/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include<string>
#include<sstream>

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

    inlet<>  input	       { this, "(bang) post greeting to the max console" };
    outlet<> message_out	 { this, "(int) when bang received, outs midi raw message from read midi file", "int" };
    outlet<> failed_out    { this, "(bang) when read file failed"};
    outlet<> read_done_out { this, "(bang) when success read midi file"};


    timer<> metro{ this,
      MIN_FUNCTION{


        while(1){

          // 初回の MidiEvent の開始が 0 ではない時はその分 delay する
          if( _eventcount == 0 && _current_tick < (*_midifile.get())[0][_eventcount].tick ){
            metro.delay( (*_midifile.get())[0][_eventcount].seconds * 1000. );
            break;
          }


          // MidiEvent のデータを出力する
          for( std :: size_t i = 0, end = (*_midifile.get())[0][_eventcount].size() ; i < end ; ++ i )
            message_out.send( static_cast<int>( (*_midifile.get())[0][_eventcount][i] ) );

          // 現時間の保存
          _current_tick = (*_midifile.get())[0][_eventcount].tick;

          // イベントの最後まで行ったら終了
          if( _eventcount + 1 >= (*_midifile.get())[0].size() ) break;

          // 次のイベントに以降
          ++ _eventcount;

          // 同タイミングだったらもう一度 MidiEvent の出力へ
          if( (*_midifile.get())[0][_eventcount].tick == _current_tick ) continue;

          // 異なる場合は 差分だけ delay して次の MidiEvent へ 
          metro.delay(
            ( (*_midifile.get())[0][_eventcount].seconds - (*_midifile.get())[0][_eventcount - 1].seconds ) * 1000.
          );
          // 次の時間を保存
          _current_tick = (*_midifile.get())[0][_eventcount].tick;
          break;
        }

        return {};


      }
    };

    

    lei_seq_alt( const atoms& args = {} ) : 
        _midifile  ( std :: make_unique< smf :: MidiFile  >() )
      , _eventcount(0)
      , _is_readfile(0)
      , _current_tick(0)
    {}







    message<> msg_bang{this, "bang", MIN_FUNCTION{


      if( ! _midifile ) return {};

      if( _is_readfile == 0 ) { 
        cerr << "doesn't read midi file" << endl;
        return {};
      }

      if(_midifile.get() -> getTrackCount() == 0) return {};

      if( _eventcount >= (*_midifile.get())[0].size() ) { 
        cerr << "end of file" << endl;
        return {};
      }

      metro.delay(0);

      return {};
    }};





    message<> read_midifile { this, "read", 
      MIN_FUNCTION{

        if( args.size() == 0 ) return {};
        if( inlet       != 0 ) return {};

        std :: string file_path = path(static_cast< std :: string>(args[0]));
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


        return {};
      }
    };
    // post to max window == but only when the class is loaded the first time

    message<> maxclass_setup { this, "maxclass_setup",
      MIN_FUNCTION {
        return {};
      }
    };

private :

    std :: unique_ptr< smf :: MidiFile > _midifile;

    std :: size_t _eventcount;
    std :: size_t _is_readfile;
    
    int _current_tick;

};


MIN_EXTERNAL(lei_seq_alt);
