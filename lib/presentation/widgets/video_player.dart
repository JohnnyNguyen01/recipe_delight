import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends HookWidget {
  const VideoPlayer({
    required final String videoUrl,
  }) : _videoUrl = videoUrl;
  final String _videoUrl;
  @override
  Widget build(BuildContext context) {
    final controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(_videoUrl) ?? '');
    return YoutubePlayer(controller: controller);
  }
}
