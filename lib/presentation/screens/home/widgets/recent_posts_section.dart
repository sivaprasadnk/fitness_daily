import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/providers/recent_blog_provider.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/recent_post_item.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentPostsSection extends StatelessWidget {
  const RecentPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    double horizontalPadding = width > 1325
        ? 150
        : width > 900
            ? 100
            : 50;
    horizontalPadding = context.horizontalPadding;
    var postCount = width > 1150 ? 3 : 2;
    if (context.isMobileDevice) {
      postCount = 1;
    }
    var postwidth = postCount == 3
        ? horizontalPadding == 150
            ? (context.screenWidth - (horizontalPadding * 2)) / 3 - 30
            : (context.screenWidth - (horizontalPadding * 2)) / 3 - 50
        : postCount == 2
            ? (context.screenWidth - horizontalPadding * 2) / 2 - 50
            : double.infinity;

    // contentWidth = double.infinity;
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPadding,
        right: horizontalPadding,
        bottom: width > 945 ? 75 : 0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SectionTitle(title: 'R E C E N T\nP O S T S'),
            SizedBox(height: 50),
            Consumer(builder: (context, ref, _) {
              var blogs = ref.watch(recentBlogProvider);
              return postCount > 1
                  ? Row(
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
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: blogs.map((blog) {
                        return RecentPostItem(
                          blog: blog,
                          maxLines: 7,
                          height: 650,
                          showBorder: false,
                          width: postwidth,
                        );
                      }).toList(),
                    );
              // : RecentPostItem(
              //     blog: blogs.first,
              //     maxLines: 7,
              //     height: 680,
              //     showBorder: false,
              //     width: postwidth,
              //   );
            }),
          ],
        ),
      ),
    );
  }
}
