import 'package:flutter/material.dart';
import 'package:fweb/src/core/ui/widgets/avatar.dart';

import '../../domain/person.dart';
import '../color_outlet.dart';
import 'socials.dart';

class Badge extends StatelessWidget {
  final double maxWidth;
  final Person person;
  const Badge({Key? key, required this.maxWidth, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var factor = maxWidth / 160;
    return FittedBox(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Avatar(
              maxWidth: maxWidth,
            ),
            SizedBox(height: maxWidth * 0.04 / factor),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hello! I am',
                  style: TextStyle(
                      color: ColorOutlet.secondary,
                      fontSize: maxWidth * 0.015 / factor),
                ),
                Text(
                  'Fred',
                  style: TextStyle(
                      color: ColorOutlet.error,
                      fontWeight: FontWeight.bold,
                      fontSize: maxWidth * 0.02 / factor),
                ),
              ],
            ),
            SizedBox(height: maxWidth * 0.01 / factor),
            Text(
              "I'm a mobile and backend programmer, lover of code.",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: ColorOutlet.secondary,
                  fontSize: maxWidth * 0.015 / factor),
            ),
            Text(
              "In constantly learning...",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: ColorOutlet.secondary,
                  fontSize: maxWidth * 0.015 / factor),
            ),
            SizedBox(height: maxWidth * 0.04 / factor),
            FittedBox(
              child: SizedBox(
                child: IntrinsicWidth(
                  child: Socials(
                    maxWidth: maxWidth,
                    person: person,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
