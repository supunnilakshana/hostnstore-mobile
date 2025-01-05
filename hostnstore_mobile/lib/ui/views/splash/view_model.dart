import 'dart:async';

import 'package:hostnstore_mobile/core/config/app/locator.dart';
import 'package:hostnstore_mobile/core/services/app_service/app_config_service.dart';
import 'package:hostnstore_mobile/core/services/facade_service/app_dialog_service.dart';
import 'package:hostnstore_mobile/temp_app/screens/onbording/views/onbording_screnn.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AppDialogService _dialogService = locator<AppDialogService>();
  final AppConfigService _appConfigService = locator<AppConfigService>();

  SplashViewModel();
  void init() async {
    await _init();
  }

  _init() async {
    Timer(const Duration(seconds: 2), () async {
      _navigationService.clearStackAndShowView(const OnBordingScreen());
      // try {

      //   AppUpdateCheck appUpdateCheck =
      //       await _appConfigService.checkAppUpdate();

      //   if (!appUpdateCheck.isUpdateAvailable) {
      //     await _appUserCheck();
      //   } else {
      //     _showAppUpdateDialog(appUpdateCheck.isForceUpdate);
      //   }
      // } catch (e) {
      //   _navigationService.clearStackAndShow(
      //     Routes.baseTransitionAreaView,
      //   );
      // }
    });
  }

  _showAppUpdateDialog(bool isForceUpdate) {
    // if (isForceUpdate) {
    //   _dialogService.showAppUpdateDialog(
    //       dismissible: false,
    //       isRequired: true,
    //       positiveCallback: () async {
    //         await StoreRedirect.redirect(
    //             androidAppId: AppConfig.appPackageName,
    //             iOSAppId: AppConfig.appStoreId);
    //       });
    // } else {
    //   _dialogService
    //       .showAppUpdateDialog(
    //           dismissible: true,
    //           isRequired: false,
    //           positiveCallback: () async {
    //             await StoreRedirect.redirect(
    //                 androidAppId: AppConfig.appPackageName,
    //                 iOSAppId: AppConfig.appStoreId);
    //           })
    //       .then((value) async => await _appUserCheck());
    // }
  }

  _appUserCheck() async {
    // try {
    //   final isAuth = await _authService.intAndCheckAuth();
    //   if (isAuth) {
    //     _navigationService.clearStackAndShow(Routes.baseTransitionAreaView,
    //         arguments: const BaseTransitionAreaViewArguments(
    //             isShowWelcomeContainer: false));
    //   } else {
    //     _navigationService.clearStackAndShow(
    //       Routes.baseTransitionAreaView,
    //     );
    //   }
    // } catch (e) {
    //   _navigationService.clearStackAndShow(
    //     Routes.baseTransitionAreaView,
    //   );

    // }
  }
}
