import 'package:flutter/material.dart';
import 'package:fweb/src/core/ui/color_outlet.dart';
import 'package:fweb/src/core/ui/widgets/container_primary.dart';

import '../../domain/person.dart';
import 'knowledge_tile.dart';

class Knowledges extends StatelessWidget {
  final double maxWidth;
  final Person person;
  const Knowledges({Key? key, required this.maxWidth, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double factor = maxWidth / 160;
    return ContainerPrimary(
        maxWidth: maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Knowledges',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: ColorOutlet.textColorLight,
                fontSize: maxWidth * 0.1 / factor,
              ),
            ),
            const SizedBox(height: 13),
            Expanded(
              child: GridView.builder(
                itemCount: person.knowledges.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  mainAxisExtent: 70,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,
                ),
                itemBuilder: (context, index) {
                  return KnowledgeTile(
                    knowledge: person.knowledges[index],
                    maxWidth: maxWidth,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
