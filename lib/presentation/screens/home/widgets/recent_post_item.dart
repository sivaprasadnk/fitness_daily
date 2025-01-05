import 'package:fitness_daily/core/utils/extensions/date_time_extensions.dart';
import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:fitness_daily/presentation/screens/components/read_more_button.dart';
import 'package:fitness_daily/presentation/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class RecentPostItem extends StatelessWidget {
  const RecentPostItem({
    super.key,
    required this.blog,
    this.width,
    this.height,
  });
  final BlogModel blog;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
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
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (blog.date != null)
                Text(
                  blog.date!.displaydate(),
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              SizedBox(height: 10),
              if (blog.title != null)
                Text(
                  blog.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              SizedBox(height: 20),
              if (blog.subTitle != null)
                Text(
                  blog.subTitle!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              Spacer(),
              AbsorbPointer(
                child: ReadMoreButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
