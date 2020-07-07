import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:Redux/audio/state/audio_state.dart';
import 'package:Redux/audio/reducer/audio_state_reducer.dart';
import 'package:Redux/audio/action/actions.dart';
import 'package:Redux/base/state/app_state.dart';

class AudioSource extends StatelessWidget {
  AudioSource({Key key}) : super(key: key);
  var store =
      Store<AudioState>(carStateReducer, initialState: AudioState.init());

  @override
  Widget build(BuildContext context) {
    Widget sourceText = StoreConnector<AudioState, String>(
      distinct: true,
      converter: (store) => store.state.sourcePath,
      builder: (context, data) {
        return Text(data);
      },
    );

    Widget box = StoreConnector<AppState, Color>(
        distinct: true,
        converter: (store) => store.state.colorState.primaryColor,
        builder: (context, data) {
          return Container(
            width: 100,
            height: 100,
            color: data,
            child: sourceText,
          );
        });

    var audioStore = StoreProvider.of<AudioState>(context);
    return GestureDetector(
      child: box,
      onTap: () {
        //audioStore.dispatch(ChangeSourcePath(sourcePath: "test"));
        audioStore.dispatch(TestAccessWebServer());
      },
    );
  }
}
