import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fweb/src/core/ui/color_outlet.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/social.dart';

class SocialTile extends StatelessWidget {
  final Social social;
  final double maxWidth;
  const SocialTile({Key? key, required this.social, required this.maxWidth})
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
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: SizedBox(
          width: maxWidth * 0.1 / factor,
          height: maxWidth * 0.1 / factor,
          child: SvgPicture.asset(
            'assets/${social.imagePath}',
            color: ColorOutlet.secondary,
          ),
        ),
      ),
      onTap: () {
        launchLink(social.path, isNewTab: true);
      },
    );
  }
}
