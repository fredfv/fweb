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
        padding: const EdgeInsets.symmetric(vertical: 2.7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Avatar(
              maxWidth: maxWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text(
                    'Hello! I am',
                    style: TextStyle(
                      color: ColorOutlet.secondary,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    ' Fred',
                    style: TextStyle(
                      color: ColorOutlet.accent,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text(
                    "I'm a mobile and backend programmer, lover of code.",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: ColorOutlet.text,
                        fontSize: 7),
                  ),
                  Text(
                    "In constantly learning...",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: ColorOutlet.text,
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: SizedBox(
                  child: IntrinsicWidth(
                    child: Socials(
                      maxWidth: maxWidth,
                      person: person,
                    ),
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
