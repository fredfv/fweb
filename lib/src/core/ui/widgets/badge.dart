import 'package:flutter/material.dart';
import 'package:fweb/src/core/ui/widgets/socials_tile.dart';

import '../../domain/person.dart';
import '../color_outlet.dart';

class Badge extends StatelessWidget {
  final double maxWidth;
  final Person person;
  const Badge({Key? key, required this.maxWidth, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth * 0.7,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorOutlet.primary,
        borderRadius: BorderRadius.circular(9),
        boxShadow: const [
          BoxShadow(
            color: ColorOutlet.secondaryDark,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
                width: maxWidth * 0.35,
                child: Row(
                  children: [
                    Flexible(
                      child: Image.asset(
                        'assets/person.png',
                      ),
                    ),
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          person.name,
                          style: TextStyle(
                            fontFamily: 'Sansation',
                            color: ColorOutlet.secondary,
                            fontSize: maxWidth * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: SizedBox(
              width: maxWidth * 0.35,
              child: GridView.builder(
                itemCount: person.socials.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 40,
                  mainAxisExtent: 40,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return SocialsTile(
                    social: person.socials[index],
                    maxWidth: maxWidth,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
