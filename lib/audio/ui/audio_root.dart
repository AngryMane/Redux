import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:Redux/audio/state/audio_state.dart';
import 'package:Redux/audio/reducer/audio_state_reducer.dart';
import 'package:Redux/audio/ui/audio_source.dart';

class AudioRoot extends StatelessWidget {
  AudioRoot({Key key}) : super(key: key);
  var store =
      Store<AudioState>(carStateReducer, initialState: AudioState.init());

  @override
  Widget build(BuildContext context) {
    return StoreProvider(store: store, child: AudioSource());
  }
}
