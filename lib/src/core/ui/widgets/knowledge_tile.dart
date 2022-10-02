import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fweb/src/core/domain/knowledge.dart';

import '../color_outlet.dart';

class KnowledgeTile extends StatelessWidget {
  final Knowledge knowledge;
  final double maxWidth;
  const KnowledgeTile(
      {Key? key, required this.knowledge, required this.maxWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double factor = maxWidth / 160;
    print(knowledge.thumbPath);
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: ColorOutlet.secondaryDark,
        borderRadius: BorderRadius.circular(7),
        // boxShadow: const [
        //   BoxShadow(
        //     color: ColorOutlet.secondaryCard,
        //     spreadRadius: 2,
        //   ),
        //],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            // width: maxWidth * 0.70 / factor,
            // height: maxWidth * 0.35 / factor,
            child: SvgPicture.asset(
              'python-270029.svg',
            ),
          ),
          //const Spacer(),
          // Flexible(
          //   child: FittedBox(
          //     fit: BoxFit.scaleDown,
          //     child: Text(
          //       knowledge.title,
          //       style: TextStyle(
          //         fontFamily: 'Sansation',
          //         color: ColorOutlet.textColorLight,
          //         fontSize: maxWidth * 0.09 / factor,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

//
// return Padding(
// padding: const EdgeInsets.only(top: 20),
// child: UnconstrainedBox(
// child: Container(
// decoration: BoxDecoration(
// color: ColorOutlet.primary,
// borderRadius: BorderRadius.circular(7),
// boxShadow: const [
// BoxShadow(
// color: ColorOutlet.secondaryDark,
// spreadRadius: 1,
// ),
// ],
// ),
// //color: ColorOutlet.error,
// width: constraintsWidth < 250 ? constraintsWidth : 250,
// height: 90,
// child: Row(
// children: [
// SizedBox(width: constraintsWidth * 0.07 / factor),
// SizedBox(
// width: constraintsWidth * 0.15 / factor,
// child: Image.asset('assets/${knowledge.thumbPath}')),
// SizedBox(width: constraintsWidth * 0.07 / factor),
// SizedBox(
// height: constraintsWidth * 0.03 / factor,
// ),
// Text(knowledge.title,
// style: TextStyle(
// color: ColorOutlet.secondary,
// fontSize: constraintsWidth * 0.062 / factor))
// ],
// ),
// ),
// ),
// );return Padding(
// padding: const EdgeInsets.only(top: 20),
// child: UnconstrainedBox(
// child: Container(
// decoration: BoxDecoration(
// color: ColorOutlet.primary,
// borderRadius: BorderRadius.circular(7),
// boxShadow: const [
// BoxShadow(
// color: ColorOutlet.secondaryDark,
// spreadRadius: 1,
// ),
// ],
// ),
// //color: ColorOutlet.error,
// width: constraintsWidth < 250 ? constraintsWidth : 250,
// height: 90,
// child: Row(
// children: [
// SizedBox(width: constraintsWidth * 0.07 / factor),
// SizedBox(
// width: constraintsWidth * 0.15 / factor,
// child: Image.asset('assets/${knowledge.thumbPath}')),
// SizedBox(width: constraintsWidth * 0.07 / factor),
// SizedBox(
// height: constraintsWidth * 0.03 / factor,
// ),
// Text(knowledge.title,
// style: TextStyle(
// color: ColorOutlet.secondary,
// fontSize: constraintsWidth * 0.062 / factor))
// ],
// ),
// ),
// ),
// );
//todo add uma pagina para exibirr com a descricao das tecnologiaas
// return Padding(
// padding: const EdgeInsets.only(top: 20),
// child: UnconstrainedBox(
// child: Container(
// decoration: BoxDecoration(
// color: ColorOutlet.primary,
// borderRadius: BorderRadius.circular(7),
// boxShadow: const [
// BoxShadow(
// color: ColorOutlet.secondaryDark,
// spreadRadius: 1,
// ),
// ],
// ),
// //color: ColorOutlet.error,
// width: constraintsWidth < 400 ? constraintsWidth : 400,
// height: 170,
// child: Row(
// children: [
// SizedBox(
// width: constraintsWidth * 0.02 / factor,
// ),
// SizedBox(
// width: constraintsWidth * 0.15 / factor,
// child: Image.asset('assets/${knowledge.thumbPath}')),
// SizedBox(
// width: constraintsWidth * 0.05 / factor,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(
// height: constraintsWidth * 0.03 / factor,
// ),
// Center(
// child: Text(knowledge.title,
// style: TextStyle(
// color: ColorOutlet.secondary,
// fontSize: constraintsWidth * 0.062 / factor)),
// ),
// SizedBox(
// height: constraintsWidth * 0.03 / factor,
// ),
// Text('    ${knowledge.description}',
// maxLines: 8,
// overflow: TextOverflow.fade,
// style: TextStyle(
// overflow: TextOverflow.fade,
// color: ColorOutlet.secondaryDark,
// fontSize: constraintsWidth * 0.038 / factor))
// ],
// ),
// )
// ],
// ),
// ),
// ),
// );
