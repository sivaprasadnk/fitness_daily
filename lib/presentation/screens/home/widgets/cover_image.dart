import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/common_strings.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    double horizontalPadding = width > 1325
        ? 150
        : width > 950
            ? 80
            : 20;
    horizontalPadding = context.horizontalPadding;
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPadding,
        right: horizontalPadding,
        bottom: width > 945 ? 75 : 0,
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/cover1.jpg',
            height: context.isLargeDevice ? 500 : 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            // margin: EdgeInsets.only(
            //   left: horizontalPadding,
            //   right: horizontalPadding,
            //   bottom: width > 945 ? 0 : 0,
            // ),
            height: context.isLargeDevice ? 500 : 400,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  kBlackColor,
                  kTransparentColor,
                ],
                stops: [0, 2],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 50,
            left: horizontalPadding + 00,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Welcome to $kAppName',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
