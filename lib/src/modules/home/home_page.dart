import 'package:flutter/material.dart';
import 'package:fweb/src/core/ui/color_outlet.dart';
import 'package:fweb/src/core/ui/widgets/badge.dart';
import 'package:fweb/src/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorOutlet.primary,
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth > 800 ? 50 : 2,
                      vertical: constraints.maxWidth > 800 ? 25 : 10),
                  crossAxisCount: constraints.maxWidth > 800 ? 2 : 1,
                  children: [
                    Badge(
                      maxWidth: constraints.maxWidth,
                      person: controller.person,
                    ),
                    Padding(
                        padding: EdgeInsets.all(constraints.maxWidth * 0.07),
                        child: Image.asset('assets/knowledgesnew.png')),
                  ]);
            },
          ),
        ));
  }
}
