import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double maxWidth;
  const Avatar({Key? key, required this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var factor = maxWidth / 160;
    return Container(
      width: maxWidth * 0.5 / factor,
      height: maxWidth * 0.5 / factor,
      decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage('assets/fredzin.png')),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}
