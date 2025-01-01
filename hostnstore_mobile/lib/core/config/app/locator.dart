import 'package:get_it/get_it.dart';
import 'package:hostnstore_mobile/core/services/app_service/app_config_service.dart';
import 'package:hostnstore_mobile/core/services/app_service/tost_serviced.dart';
import 'package:hostnstore_mobile/core/services/facade_service/app_dialog_service.dart';
import 'package:hostnstore_mobile/core/services/facade_service/secure_storage_service.dart';

import 'package:stacked_services/stacked_services.dart';

GetIt _locator = GetIt.instance;
GetIt get locator => _locator;

void setUpLocator() async {
  // Facade services
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => AppDialogService());
  locator.registerLazySingleton(() => SecureStorageService());
  locator.registerLazySingleton(() => ToastService());

  //App services

  locator.registerLazySingleton(() => AppConfigService());

  // locator.registerLazySingleton(() => TransitionAreaService());
}
