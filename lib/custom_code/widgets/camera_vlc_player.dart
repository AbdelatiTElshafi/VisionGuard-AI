// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class CameraVlcPlayer extends StatefulWidget {
  const CameraVlcPlayer({
    super.key,
    this.width,
    this.height,
    required this.url,
  });

  final double? width;
  final double? height;
  final String url;

  @override
  State<CameraVlcPlayer> createState() => _CameraVlcPlayerState();
}

class _CameraVlcPlayerState extends State<CameraVlcPlayer> {
  late VlcPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VlcPlayerController.network(
      widget.url,
      hwAcc: HwAcc.full,
      autoPlay: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: VlcPlayer(
        controller: _controller,
        aspectRatio: 16 / 9,
        placeholder: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
