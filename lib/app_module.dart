import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fweb/splash_page.dart';
import 'package:fweb/src/modules/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ChildRoute('/src',
            child: (context, args) => HomePage(),
            transition: TransitionType.rightToLeftWithFade),
        WildcardRoute(
            child: (_, __) => const Scaffold(
                    body: Center(
                  child: Text('Página não existe'),
                )))
        //RedirectRoute('/redir', to: '/auth/')
      ];
}
