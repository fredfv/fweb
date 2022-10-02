import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/social.dart';

class SocialsTile extends StatelessWidget {
  final Social social;
  final double maxWidth;
  const SocialsTile({Key? key, required this.social, required this.maxWidth})
      : super(key: key);

  Future<void> launchLink(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  @override
  Widget build(BuildContext context) {
    double factor = maxWidth / 160;
    return InkWell(
      child: SizedBox(
        width: maxWidth * 0.45 / factor,
        child: Image.asset(
          'assets/${social.imagePath}',
        ),
      ),
      onTap: () {
        launchLink(social.path, isNewTab: true);
      },
    );
  }
}
