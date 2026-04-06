// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CameraSecureWebView extends StatefulWidget {
  const CameraSecureWebView({
    super.key,
    this.width,
    this.height,
    required this.url,
  });

  final double? width;
  final double? height;
  final String url;

  @override
  State<CameraSecureWebView> createState() => _CameraSecureWebViewState();
}

class _CameraSecureWebViewState extends State<CameraSecureWebView> {
  InAppWebViewController? webViewController;
  bool isLoading = true;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(widget.url),
            ),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              mediaPlaybackRequiresUserGesture: false,
              allowsInlineMediaPlayback: true,
              iframeAllow: 'camera; microphone; fullscreen',
              iframeAllowFullscreen: true,
              useShouldOverrideUrlLoading: true,
              transparentBackground: true,
              supportZoom: false,
              disableHorizontalScroll: false,
              disableVerticalScroll: false,
            ),
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
            onLoadStart: (controller, url) {
              setState(() {
                isLoading = true;
                errorText = null;
              });
            },
            onLoadStop: (controller, url) async {
              setState(() {
                isLoading = false;
              });
            },
            onReceivedError: (controller, request, error) {
              setState(() {
                isLoading = false;
                errorText = 'Failed to load page: ${error.description}';
              });
            },
            onReceivedHttpError: (controller, request, response) {
              setState(() {
                isLoading = false;
                errorText = 'HTTP error: ${response.statusCode}';
              });
            },

            // أهم جزء: قبول الشهادة غير الموثوقة
            onReceivedServerTrustAuthRequest: (controller, challenge) async {
              return ServerTrustAuthResponse(
                action: ServerTrustAuthResponseAction.PROCEED,
              );
            },
          ),
          if (isLoading)
            const Positioned.fill(
              child: ColoredBox(
                color: Colors.black,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          if (errorText != null)
            Positioned.fill(
              child: Container(
                color: Colors.black,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Text(
                  errorText!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
