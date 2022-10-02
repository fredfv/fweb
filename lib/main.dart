import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Modular.to.addListener(() {
    if (kDebugMode) {
      print(Modular.to.path);
    }
  });

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
