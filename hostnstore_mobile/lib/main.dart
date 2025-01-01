import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/app/view.dart';
import 'package:hostnstore_mobile/core/config/app/init_app_config.dart';

void main() async {
  await inizializeAppConfig();
  runApp(const MyApp());
}
