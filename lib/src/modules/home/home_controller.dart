import 'package:flutter/cupertino.dart';
import 'package:fweb/src/core/domain/knowledge.dart';
import 'package:fweb/src/core/domain/person.dart';

import '../../core/domain/social.dart';

class HomeController extends ChangeNotifier {
  Person person = Person(
      name: 'Frederico Ferreira Vieira',
      ocupation: 'Programador',
      socials: <Social>[
        Social(
            path: 'https://www.linkedin.com/in/frederico-vieira-73499b212',
            imagePath: 'linkedin.svg'),
        Social(path: 'https://github.com/fredfv', imagePath: 'github.svg'),
        Social(path: 'mailto:frederico.fv07@gmail.com', imagePath: 'email.svg'),
        Social(
            path:
                'https://play.google.com/store/apps/developer?id=FredGameDev&hl=pt_BR&gl=US',
            imagePath: 'playstore.svg')
      ],
      knowledges: <Knowledge>[
        Knowledge(title: 'C Sharp', thumbPath: 'c-sharp-c-270702.png'),
        Knowledge(title: 'ASP.NET Core', thumbPath: 'microsoft-net-270121.png'),
        Knowledge(title: 'Unity', thumbPath: 'unity-270184.png'),
        Knowledge(title: 'Xamarin', thumbPath: 'xamarin-270983.png'),
        Knowledge(title: 'Dart', thumbPath: 'dart-272959.png'),
        Knowledge(title: 'Flutter', thumbPath: 'flutter-270496.png'),
        Knowledge(title: 'JavaScript', thumbPath: 'java-script-js-270821.png'),
        Knowledge(title: 'Ionic', thumbPath: 'ionic-196629.png'),
        Knowledge(title: 'Python', thumbPath: 'python-270029.png'),
        Knowledge(
            title: 'SQL Server', thumbPath: 'microsoft-sql-server-270245.png'),
        Knowledge(title: 'MongoDB', thumbPath: 'mongodb-270763.png'),
        Knowledge(title: 'SQLite', thumbPath: 'sqlite-272751.png'),
      ]);
}
