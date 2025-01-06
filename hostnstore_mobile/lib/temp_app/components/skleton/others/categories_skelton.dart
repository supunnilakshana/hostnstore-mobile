import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import '../skelton.dart';

class CategoriesSkelton extends StatelessWidget {
  const CategoriesSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (_) => Padding(
            padding: const EdgeInsets.only(left: AppStyle.defaultPadding),
            child: Skeleton(
              height: 32,
              width: 96,
            ),
          ),
        ),
      ),
    );
  }
}
