// import 'package:allfileds/core/config/constants/assets_const.dart';
// import 'package:allfileds/ui/theme/color.dart';
// import 'package:allfileds/ui/theme/style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ProjectCardShrimmer extends StatelessWidget {
//   const ProjectCardShrimmer({super.key, l});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.secondary,
//       child: Padding(
//         padding: EdgeInsets.only(left: 12.w),
//         child: Container(
//           child: Container(
//             padding: EdgeInsets.all(16.sp),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.transparent,
//                   AppColors.primary.withOpacity(0.2)
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 SizedBox(height: 60.h),
//                 TitlePlaceholder(),
//                 SizedBox(height: 8.h),
//                 Text(
//                   title,
//                   style: AppStyle.heading5Medium.copyWith(
//                     color: AppColors.white,
//                   ),
//                 ),
//                 SizedBox(height: 8.h),
//                 Text(
//                   description,
//                   style: AppStyle.bodyTextSmall.copyWith(
//                     color: AppColors.white,
//                   ),
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
