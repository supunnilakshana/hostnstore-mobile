import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

import 'package:stacked/stacked.dart';
import 'view_model.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(
      BuildContext context, SplashViewModel viewModel, Widget? child) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Container(
          color: AppColors.white,
          width: 270,
          height: 270,
          // child: Padding(
          //   padding: EdgeInsets.all(30.w),
          //   child: Image.asset(
          //     AssetsConst.logoSplash,
          //     width: 180.w,
          //     // height: 76.h,
          //   ),
          // ),
        ),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) => viewModel.init();
}
