import 'package:csgorivals/core/base/base_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerService extends BaseServiceModel {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  showSnackbar<T>(SnackBar snackBar)
  {
    return scaffoldKey.currentState!.showSnackBar(snackBar);
  }
  hideSnackbar<T>()
  {
    return scaffoldKey.currentState!.hideCurrentSnackBar();
  }
}
