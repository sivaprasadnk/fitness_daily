import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/screens/home/section_title.dart';
import 'package:flutter/material.dart';

class FeaturedPostSection extends StatelessWidget {
  const FeaturedPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("## width :${context.screenWidth}");
    var width = context.screenWidth;
    return Container(
      width: context.screenWidth,
      color: kBlueGreyColor,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100) +
                EdgeInsets.only(left: width > 1325 ? 200 : width * .08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(
                  title: 'F E A T U R E D\nP O S T',
                  textColor: kWhiteColor,
                ),
                SizedBox(height: 20),
                Container(
                  height: 6,
                  width: 50,
                  color: Colors.orange,
                ),
                SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/cover.png',
                      height: 350,
                      width: 450,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 50),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 400,
                      ),
                      // width: 400,
                      height: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            blogs[0].date!,
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            blogs[0].title!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: kWhiteColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            blogs[0].subTitle!,
                            style: TextStyle(
                              fontSize: 16,
                              color: kWhiteColor,
                            ),
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Read More',
                                style: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: kWhiteColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
