import 'package:auto_route/auto_route.dart';
import 'package:fitness_daily/core/utils/extensions/date_time_extensions.dart';
import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:fitness_daily/presentation/screens/components/read_more_button.dart';
import 'package:fitness_daily/router.gr.dart';
import 'package:flutter/material.dart';
// import 'package:universal_html/html.dart' as html;
class RecentPostItem extends StatelessWidget {
  const RecentPostItem({
    super.key,
    required this.blog,
    this.width,
    this.height,
    this.showBorder = true,
    this.maxLines,
  });
  final BlogModel blog;
  final double? width;
  final double? height;
  final bool showBorder;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(DetailsRoute(id: blog.id!, blog: blog));
        // context.pushRoute(DetailsRoute(
        //   // blog: blog,
        //   id: blog.id!,
        // ));
        // router.push()
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: showBorder ? Border.all() : null,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            // left: 24,
            // right: 24,
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
              Image.asset(
                blog.imageAssetPath!,
                height: 280,
                width: 450,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
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
                  // maxLines: 8,
                  maxLines: maxLines,
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
