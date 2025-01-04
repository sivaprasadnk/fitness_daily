import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/presentation/screens/details/details_screen.dart';
import 'package:fitness_daily/presentation/screens/home/section_title.dart';
import 'package:flutter/material.dart';

class RecentPostsSection extends StatelessWidget {
  const RecentPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlack12Color,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 100),
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                            blog: blog,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 320,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              blog.title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              blog.subTitle!,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
