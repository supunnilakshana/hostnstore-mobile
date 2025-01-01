import 'dart:ui';

import 'package:get_it/get_it.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyAppViewModel extends ReactiveViewModel {
  final NavigationService _navigationService = GetIt.I.get();
  MyAppViewModel();

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  goBack() {
    _navigationService.back();
  }

  void init() {}
}
