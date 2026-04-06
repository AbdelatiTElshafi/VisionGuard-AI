// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class RtspPlayerWidget extends StatefulWidget {
  const RtspPlayerWidget({
    super.key,
    this.width,
    this.height,
    required this.rtspUrl,
    this.autoPlay = true,
    this.showControls = true,
  });

  final double? width;
  final double? height;
  final String rtspUrl;
  final bool autoPlay;
  final bool showControls;

  @override
  State<RtspPlayerWidget> createState() => _RtspPlayerWidgetState();
}

class _RtspPlayerWidgetState extends State<RtspPlayerWidget> {
  late VlcPlayerController _controller;
  bool _initialized = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() {
    try {
      _controller = VlcPlayerController.network(
        widget.rtspUrl,
        hwAcc: HwAcc.auto,
        autoPlay: widget.autoPlay,
        options: VlcPlayerOptions(
          advanced: VlcAdvancedOptions([
            VlcAdvancedOptions.networkCaching(300),
          ]),
          rtp: VlcRtpOptions([
            VlcRtpOptions.rtpOverRtsp(true),
          ]),
        ),
      );

      _controller.addListener(_playerListener);

      setState(() {
        _initialized = true;
        _error = null;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    }
  }

  void _playerListener() {
    if (!mounted) return;
    final value = _controller.value;
    if (value.hasError) {
      setState(() {
        _error = value.errorDescription;
      });
    }
  }

  @override
  void didUpdateWidget(covariant RtspPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.rtspUrl != widget.rtspUrl) {
      _controller.removeListener(_playerListener);
      _controller.dispose();
      _initialized = false;
      _initPlayer();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_playerListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.width ?? double.infinity;
    final height = widget.height ?? 220.0;

    if (_error != null) {
      return Container(
        width: width,
        height: height,
        color: Colors.black,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Text(
          'RTSP load error\\n$_error',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }

    if (!_initialized) {
      return Container(
        width: width,
        height: height,
        color: Colors.black,
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      );
    }

    return Container(
      width: width,
      height: height,
      color: Colors.black,
      child: Stack(
        children: [
          VlcPlayer(
            controller: _controller,
            aspectRatio: 16 / 9,
            placeholder: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          if (widget.showControls)
            Positioned(
              right: 10,
              top: 10,
              child: Row(
                children: [
                  _controlButton(
                    icon: Icons.refresh,
                    onTap: () async {
                      await _controller.stop();
                      await _controller.play();
                    },
                  ),
                  const SizedBox(width: 8),
                  _controlButton(
                    icon: Icons.play_arrow,
                    onTap: () async {
                      await _controller.play();
                    },
                  ),
                  const SizedBox(width: 8),
                  _controlButton(
                    icon: Icons.pause,
                    onTap: () async {
                      await _controller.pause();
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _controlButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.55),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}
