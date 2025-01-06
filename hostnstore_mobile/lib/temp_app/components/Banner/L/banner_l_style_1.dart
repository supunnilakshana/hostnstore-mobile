import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/temp_app/components/banner/L/banner_l.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import '../../../constants.dart';

class BannerLStyle1 extends StatelessWidget {
  const BannerLStyle1({
    super.key,
    this.image = "https://i.imgur.com/wpl37Kz.png",
    required this.title,
    required this.press,
    this.subtitle,
    required this.discountPercent,
  });
  final String? image;
  final String title;
  final String? subtitle;
  final int discountPercent;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return BannerL(
      image: image!,
      press: press,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppStyle.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: AppStyle.grandisExtendedFont,
                  fontSize: 60,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          discountPercent.toString(),
                          style: TextStyle(
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.4
                              ..color = Colors.white38,
                          ),
                        ),
                        Positioned(
                          top: -4,
                          right: -4,
                          child: Text(discountPercent.toString()),
                        ),
                      ],
                    ),
                    const SizedBox(width: AppStyle.defaultPadding / 4),
                    Text(
                      "%",
                      style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.4
                          ..color = Colors.white38,
                      ),
                    )
                  ],
                ),
              ),
              if (subtitle != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppStyle.defaultPadding / 2,
                      vertical: AppStyle.defaultPadding / 8),
                  color: Colors.white70,
                  child: Text(
                    subtitle!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              const SizedBox(height: AppStyle.defaultPadding),
              Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: AppStyle.grandisExtendedFont,
                  fontSize: 31,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const Spacer(),
              const Text(
                "Shop now  >",
                style: TextStyle(
                  fontFamily: AppStyle.grandisExtendedFont,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
