import 'package:flutter/material.dart';
import 'package:flutter_getx_multiple_language/views/home_screen.dart';
import 'package:get/get.dart';

import 'config/Localization_Service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
    );
  }
}
