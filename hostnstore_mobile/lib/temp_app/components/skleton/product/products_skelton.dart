import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import '../../../constants.dart';
import 'product_card_skelton.dart';

class ProductsSkelton extends StatelessWidget {
  const ProductsSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: AppStyle.defaultPadding,
            right: index == 4 ? AppStyle.defaultPadding : 0,
          ),
          child: const ProductCardSkelton(),
        ),
      ),
    );
  }
}
