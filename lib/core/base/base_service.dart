import 'package:logger/logger.dart';

import '../logger.dart';

class BaseServiceModel{
  Logger? log;
  BaseServiceModel({String? title}){
    this.log = getLogger(
      title ?? this.runtimeType.toString()
    );
  }
}