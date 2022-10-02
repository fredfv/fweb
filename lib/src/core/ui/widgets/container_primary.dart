import 'package:flutter/cupertino.dart';

class ContainerPrimary extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  const ContainerPrimary(
      {Key? key, required this.child, required this.maxWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: maxWidth * 0.7,
      //padding: const EdgeInsets.all(13),
      // decoration: BoxDecoration(
      //   color: ColorOutlet.primary,
      //   borderRadius: BorderRadius.circular(10),
      //   boxShadow: const [
      //     BoxShadow(
      //       color: ColorOutlet.secondaryDark,
      //       spreadRadius: 1,
      //     ),
      //   ],
      // ),
      child: child,
    );
  }
}
