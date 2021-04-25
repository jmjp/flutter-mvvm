import 'package:csgorivals/core/logger.dart';
import 'package:csgorivals/core/services/navigator_service.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'services/messenger_service.dart';

GetIt locator = GetIt.instance;

class StoreInjector{
  static Logger _log = getLogger('StoreInjector');
  
  static Future<void> setupLocator() async {
    _log.d('Iniciando o serviço de navegação');
    locator.registerLazySingleton(() => NavigatorService());
    _log.d('Iniciando o serviço de messenger');
    locator.registerLazySingleton(() => MessengerService());
  }
}