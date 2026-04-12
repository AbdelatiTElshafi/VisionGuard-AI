// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Platform;
import 'package:url_launcher/url_launcher.dart';

Future openZeroTierStore() async {
  const String iosUrl =
      'https://apps.apple.com/eg/app/zerotier-one/id1084101492';

  const String androidUrl =
      'https://play.google.com/store/apps/details?id=com.zerotier.one';

  final String targetUrl = Platform.isIOS ? iosUrl : androidUrl;
  final Uri uri = Uri.parse(targetUrl);

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $targetUrl');
  }
}
