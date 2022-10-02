import 'package:fweb/src/core/domain/social.dart';

import 'knowledge.dart';

class Person {
  final String name;
  final String ocupation;
  final List<Knowledge> knowledges;
  final List<Social> socials;

  Person(
      {required this.name,
      required this.ocupation,
      required this.knowledges,
      required this.socials});
}
