import 'package:flutter/material.dart';
import 'package:fweb/src/core/domain/person.dart';

import 'social_tile.dart';

class Socials extends StatelessWidget {
  final double maxWidth;
  final Person person;
  const Socials({Key? key, required this.maxWidth, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: person.socials
            .map((e) => SocialTile(social: e, maxWidth: maxWidth))
            .toList());
  }
}
