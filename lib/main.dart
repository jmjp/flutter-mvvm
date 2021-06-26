import 'package:csgorivals/core/services/messenger_service.dart';
import 'package:csgorivals/core/services/navigator_service.dart';
import 'package:csgorivals/themes/dark_theme.dart';
import 'package:csgorivals/themes/light_theme.dart';
import 'package:csgorivals/views/home/home_view.dart';
import 'package:flutter/material.dart';

import 'core/locator.dart';
 
void main() async {
  await StoreInjector.setupLocator();
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<NavigatorService>().navigatorKey,
      scaffoldMessengerKey: locator<MessengerService>().scaffoldKey,
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
    );
  }
}