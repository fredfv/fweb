import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double maxWidth;
  const Avatar({Key? key, required this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var factor = maxWidth / 160;
    return Container(
      width: maxWidth * 0.3 / factor,
      height: maxWidth * 0.3 / factor,
      decoration: BoxDecoration(
          //color: Colors.blue,
          image: const DecorationImage(image: AssetImage('assets/fredzin.png')),
          //border: Border.all(width: 8),
          borderRadius: BorderRadius.circular(2)),
    );

    // return CircleAvatar(
    //   radius: maxWidth * 0.04,
    //   backgroundImage: const AssetImage('assets/eu.jpeg'),
    // );
  }
}
