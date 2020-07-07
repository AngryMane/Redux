import 'package:Redux/audio/state/audio_state.dart';
import 'package:redux/redux.dart';
import 'package:Redux/audio/action/actions.dart';

import 'package:web_socket_channel/io.dart';

// parttern match by type (like haskell)
final carStateReducer = combineReducers<AudioState>([
  TypedReducer<AudioState, TogglePlaying>(
      (state, action) => state.copyWidth(isPlaying_: !state.isPlaying)),
  TypedReducer<AudioState, ChangeSourcePath>(
      (state, action) => state.copyWidth(sourcePath_: action.sourcePath)),
  TypedReducer<AudioState, TestAccessWebServer>((state, action) {
    var channel = IOWebSocketChannel.connect("ws://" + action.url);
    channel.sink.add("connected!");
    channel.stream.listen((message) {
      print(message);
    });
    return state;
  }),
]);
