import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import '../../../constants.dart';
import 'secondary_product_skelton.dart';

class SeconderyProductsSkelton extends StatelessWidget {
  const SeconderyProductsSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: AppStyle.defaultPadding,
            right: index == 3 ? AppStyle.defaultPadding : 0,
          ),
          child: const SeconderyProductSkelton(),
        ),
      ),
    );
  }
}
