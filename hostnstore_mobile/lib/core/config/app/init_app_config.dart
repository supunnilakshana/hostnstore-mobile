import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostnstore_mobile/core/config/app/locator.dart';

Future<void> inizializeAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setUpLocator();
}
