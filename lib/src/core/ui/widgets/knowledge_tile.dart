import 'package:flutter/material.dart';
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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorOutlet.primary,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            color: ColorOutlet.secondaryDark,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: maxWidth * 0.45 / factor,
            child: Image.asset(
              'assets/${knowledge.thumbPath}',
            ),
          ),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                knowledge.title,
                style: TextStyle(
                  fontFamily: 'Sansation',
                  color: ColorOutlet.secondary,
                  fontSize: maxWidth * 0.13 / factor,
                ),
              ),
            ),
          ),
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
