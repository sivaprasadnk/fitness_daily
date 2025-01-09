import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/recent_post_item.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';

class RecentPostsSection extends StatelessWidget {
  const RecentPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    // double horizontalPadding = width > 1325 ? 150 : width * .08;
    // horizontalPadding = 0;
    // var horizontalPadding = width * .08;
    double horizontalPadding = width > 1325
        ? 150
        : width > 900
            ? 100
            : 50;
    horizontalPadding = context.horizontalPadding;

    // double contentWidth = width > 1000 ? 500 : 200;
    var postCount = width > 1150 ? 3 : 2;
    var postwidth = postCount == 3
        // ? (context.screenWidth - horizontalPadding) / 4
        ? horizontalPadding == 150
            ? (context.screenWidth - (horizontalPadding * 2)) / 3 - 30
            : (context.screenWidth - (horizontalPadding * 2)) / 3 - 50
        : (context.screenWidth - horizontalPadding * 2) / 2 - 50;

    // contentWidth = double.infinity;
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPadding,
        right: horizontalPadding,
        bottom: width > 945 ? 75 : 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle(title: 'R E C E N T\nP O S T S'),
          SizedBox(height: 50),
          // if (width > 1080)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: blogs.take(postCount).map((blog) {
              return RecentPostItem(
                blog: blog,
                maxLines: 7,
                height: 630,
                showBorder: false,
                width: postwidth,
              );
            }).toList(),
          ),
          // SizedBox(
          //   height: 700,
          //   width: width,
          //   child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 1,
          //       mainAxisSpacing: 20,
          //       mainAxisExtent: 350,
          //     ),
          //     shrinkWrap: true,
          //     itemCount: min(blogs.length, 3),
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       var blog = blogs[index];
          //       return RecentPostItem(
          //         blog: blog,
          //         maxLines: 7,
          //         height: 630,
          //         showBorder: false,
          //         // width: 30,
          //       );
          //     },
          //   ),
          // )
          // else
          // ...blogs.map(
          //   (blog) {
          //     return Padding(
          //       padding: EdgeInsets.only(
          //         bottom: 20,
          //         right: horizontalPadding,
          //       ),
          //       child: RecentPostItem(
          //         blog: blog,
          //         width: contentWidth,
          //         height: 300,
          //         maxLines: 5,
          //         showBorder: false,
          //       ),
          //     );
          // },
          // )
        ],
      ),
    );
  }
}
