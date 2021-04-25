import 'package:csgorivals/core/base/base_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorService extends BaseServiceModel {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  Future<dynamic> navigateToPage<T>(
      MaterialPageRoute<dynamic> pageRoute) async {
    log!.i('navigateToPage: ${pageRoute.settings.name}');
    return navigatorKey.currentState?.push(pageRoute);
  }

  Future<dynamic> navigateAndReplace<t>(
      MaterialPageRoute<dynamic> pageRoute) async {
    log!.i('navigateToPage: ${pageRoute.settings.name}');
    return navigatorKey.currentState?.pushReplacement(pageRoute);
  }
}
