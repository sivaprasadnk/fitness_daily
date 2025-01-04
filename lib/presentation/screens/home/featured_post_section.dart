import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/screens/components/read_more_button.dart';
import 'package:fitness_daily/presentation/screens/details/details_screen.dart';
import 'package:fitness_daily/presentation/screens/home/section_title.dart';
import 'package:flutter/material.dart';

class FeaturedPostSection extends StatelessWidget {
  const FeaturedPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("## width :${context.screenWidth}");
    var width = context.screenWidth;
    var blog = blogs[0];
    return Container(
      width: context.screenWidth,
      color: kBlueGreyColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
                SizedBox(
                  width: width * .8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/cover.png',
                        height: 350,
                        width: 450,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 50),
                      Expanded(
                        child: SizedBox(
                          // constraints: BoxConstraints(
                          //   maxWidth: 300,
                          //   minWidth: 200,
                          // ),
                          // width: 400,
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                blog.date!,
                                style: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                blog.title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kWhiteColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                blog.subTitle!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kWhiteColor,
                                ),
                                maxLines: width < 1100 ? 6 : 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Spacer(),
                              ReadMoreButton(
                                color: kWhiteColor,
                                callback: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailsScreen(
                                        blog: blog,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                      if (width > 1337) SizedBox(width: 200),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
