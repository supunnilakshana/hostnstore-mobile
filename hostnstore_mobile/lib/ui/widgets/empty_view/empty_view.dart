import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

class EmptyView extends StatelessWidget {
  final String? text;
  final String? url;
  final double? imgWidth;
  const EmptyView({super.key, this.text, this.url, this.imgWidth});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // SizedBox(height: 20.h),
        // Text(
        //   text ?? 'No Data Found',
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     color: AppColors.primary,
        //     fontWeight: FontWeight.w700,
        //     fontSize: 20.sp,
        //   ),
        // ),
        // SizedBox(height: 10.h),
        // Text(
        //   'Please try again later',
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     color: AppColors.primary,
        //     fontWeight: FontWeight.w400,
        //     fontSize: 16.sp,
        //   ),
        // ),
        // GifView.asset(
        //   AssetsConst.emptyBoxGif,
        //   width: imgWidth ?? size.width * 0.7,
        // ),
      ],
    );
  }
}
