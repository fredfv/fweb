import 'package:flutter/material.dart';
import 'package:fweb/src/core/ui/color_outlet.dart';
import 'package:fweb/src/core/ui/widgets/badge.dart';
import 'package:fweb/src/core/ui/widgets/knowledge_tile.dart';
import 'package:fweb/src/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorOutlet.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? child) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      children: [
                        Expanded(
                          child: Badge(
                            maxWidth: constraints.maxWidth,
                            person: controller.person,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: SizedBox(
                            width: constraints.maxWidth * 0.7,
                            child: GridView.builder(
                              itemCount: controller.person.knowledges.length,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 320,
                                mainAxisExtent: 90,
                                crossAxisSpacing: 13,
                                mainAxisSpacing: 13,
                              ),
                              itemBuilder: (context, index) {
                                return KnowledgeTile(
                                  knowledge:
                                      controller.person.knowledges[index],
                                  maxWidth: constraints.maxWidth,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ));
  }
}
