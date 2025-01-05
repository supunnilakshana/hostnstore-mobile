import 'package:flutter/material.dart';

import 'package:hostnstore_mobile/core/config/routes/router.router.dart';
import 'package:hostnstore_mobile/temp_app/theme/app_theme.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'view_model.dart';

class MyApp extends StackedView<MyAppViewModel> {
  const MyApp({super.key});

  @override
  Widget builder(
      BuildContext context, MyAppViewModel viewModel, Widget? child) {
    return MaterialApp(
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            // Use adaptive text scaling
            textScaler: TextScaler.noScaling,
          ),
          child: widget!,
        );
      },
      title: 'HostNStore',
      // theme: AppTheme.theme,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }

  @override
  MyAppViewModel viewModelBuilder(BuildContext context) => MyAppViewModel();

  @override
  void onViewModelReady(MyAppViewModel viewModel) => viewModel.init();
}
