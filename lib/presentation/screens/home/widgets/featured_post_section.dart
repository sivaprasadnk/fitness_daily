import 'package:auto_route/auto_route.dart';
import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/core/utils/extensions/date_time_extensions.dart';
import 'package:fitness_daily/presentation/screens/components/read_more_button.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/section_title.dart';
import 'package:fitness_daily/router.gr.dart';
import 'package:flutter/material.dart';

class FeaturedPostSection extends StatelessWidget {
  const FeaturedPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("## width :${context.screenWidth}");
    var width = context.screenWidth;
    var horizontalPadding = width * .08;
    horizontalPadding = 0;
    var blog = blogs.where((blog) => blog.id == 2).first;
    var color = kCustomBlueColor;
    return SizedBox(
      width: width,
      // color: kBlueGreyColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: width > 1325 ? 150 : horizontalPadding,
          bottom: width > 945 ? 75 : 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SectionTitle(
              title: 'F E A T U R E D\nP O S T',
              textColor: color,
            ),
            SizedBox(height: 20),
            Container(
              height: 6,
              width: 50,
              color: Colors.orange,
            ),
            SizedBox(height: 50),
            if (width > 945)
              SizedBox(
                width: width * .9,
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
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              blog.date!.displaydate(),
                              style: TextStyle(
                                color: color,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              blog.title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: color,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              blog.subTitle!,
                              style: TextStyle(
                                fontSize: 16,
                                color: color,
                              ),
                              maxLines: width < 1100 ? 6 : 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Spacer(),
                            ReadMoreButton(
                              color: color,
                              callback: () {
                                AutoRouter.of(context).push(
                                    DetailsRoute(id: blog.id!, blog: blog));
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
              )
            else ...[
              Padding(
                padding: EdgeInsets.only(right: horizontalPadding),
                child: Image.asset(
                  'assets/images/image1.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                blog.date!.displaydate(),
                style: TextStyle(
                  color: color,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: horizontalPadding),
                child: Text(
                  blog.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: color,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: horizontalPadding),
                child: Text(
                  blog.subTitle!,
                  style: TextStyle(
                    fontSize: 16,
                    color: color,
                  ),
                  maxLines: width < 1100 ? 6 : 10,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: horizontalPadding),
                child: ReadMoreButton(
                  color: color,
                  callback: () {
                    AutoRouter.of(context)
                        .push(DetailsRoute(id: blog.id!, blog: blog));
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ],
        ),
      ),
    );
  }
}
