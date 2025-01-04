import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/screens/home/recent_post_item.dart';
import 'package:fitness_daily/presentation/screens/home/section_title.dart';
import 'package:flutter/material.dart';

class RecentPostsSection extends StatelessWidget {
  const RecentPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    return Container(
      color: kBlack12Color,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100) +
            EdgeInsets.only(
              left: width > 1325 ? 200 : width * .08,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: 'R E C E N T\nP O S T S'),
            SizedBox(height: 20),
            Container(
              height: 6,
              width: 50,
              color: Colors.orange,
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 330,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(width: 50);
                },
                shrinkWrap: true,
                itemCount: blogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var blog = blogs[index];
                  return RecentPostItem(blog: blog);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
