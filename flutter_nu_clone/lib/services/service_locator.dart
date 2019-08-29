import 'package:flutter_nu_clone/services/service_local_authentication.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LocalAuthenticationService());
}