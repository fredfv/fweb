import 'package:flutter/cupertino.dart';
import 'package:fweb/src/core/domain/person.dart';

import '../../core/domain/social.dart';

class HomeController extends ChangeNotifier {
  Person person = Person(socials: <Social>[
    Social(
      path: 'https://www.linkedin.com/in/frederico-vieira-73499b212',
      imagePath: 'linkedin.svg',
    ),
    Social(
      path: 'https://github.com/fredfv',
      imagePath: 'github.svg',
    ),
    Social(
      path: 'mailto:frederico.fv07@gmail.com',
      imagePath: 'email.svg',
    ),
    Social(
      path:
          'https://play.google.com/store/apps/developer?id=FredGameDev&hl=pt_BR&gl=US',
      imagePath: 'playstore.svg',
    )
  ]);
}
