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
    // return GridView.builder(
    //   itemCount: person.socials.length,
    //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 40,
    //     mainAxisExtent: 40,
    //     crossAxisSpacing: 5,
    //     mainAxisSpacing: 5,
    //   ),
    //   itemBuilder: (context, index) {
    //     return SocialTile(
    //       social: person.socials[index],
    //       maxWidth: maxWidth,
    //     );
    //   },
    // );
  }
}
