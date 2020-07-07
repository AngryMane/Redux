import 'package:flutter/foundation.dart';

@immutable
class AudioState {
  final bool isPlaying;
  final String sourcePath;

  const AudioState({
    this.isPlaying = false,
    this.sourcePath = '',
  });

  factory AudioState.init() => const AudioState();

  AudioState copyWidth({bool isPlaying_, String sourcePath_}) {
    return AudioState(
        isPlaying: isPlaying_ ?? this.isPlaying,
        sourcePath: sourcePath_ ?? this.sourcePath);
  }
}
