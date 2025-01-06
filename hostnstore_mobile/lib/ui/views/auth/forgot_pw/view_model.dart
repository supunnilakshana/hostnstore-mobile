import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/core/config/app/locator.dart';
import 'package:hostnstore_mobile/core/config/enums/fetching_status.dart';
import 'package:hostnstore_mobile/core/services/app_service/app_config_service.dart';
import 'package:hostnstore_mobile/core/services/app_service/tost_serviced.dart';
import 'package:hostnstore_mobile/core/services/facade_service/app_dialog_service.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SampleViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final AppConfigService _appConfigService = locator<AppConfigService>();
  final AppDialogService _appDialogService = locator<AppDialogService>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final ToastService _toastService = locator<ToastService>();
  FetchingStatus fetchingStatus = FetchingStatus.fetching;

  late dynamic appException;

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  loadData() async {
    try {
      fetchingStatus = FetchingStatus.fetching;

      notifyListeners();

      fetchingStatus = FetchingStatus.success;
      notifyListeners();
    } catch (e) {
      appException = e;
      fetchingStatus = FetchingStatus.error;
      notifyListeners();
    }
  }

  void init() async {
    await loadData();
  }
}
