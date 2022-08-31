import 'package:awesome_weather/app/app.dart';
import 'package:awesome_weather/bootstrap.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  bootstrap(() => const App());
}
