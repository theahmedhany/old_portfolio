import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomSnackBar(context, 'Could not launch the link.');
    }
  } else {
    CustomSnackBar(context, 'Invalid URL.');
  }
}
