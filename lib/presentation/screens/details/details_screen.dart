import 'package:auto_route/annotations.dart';
import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/common_strings.dart';
import 'package:fitness_daily/core/utils/extensions/date_time_extensions.dart';
import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.blog,
    @PathParam('id') required this.id,
  });
  final BlogModel blog;
  final int id;
  @override
  Widget build(BuildContext context) {
    // var blog = blogs.where((blog) => blog.id! == id).first;
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(kAppName),
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  // border: Border.all(),
                ),
                // padding: EdgeInsets.all(50),
                // margin: EdgeInsets.only(left: 200, right: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (blog.date != null) Text(blog.date!.displaydate()),
                    if (blog.date != null) SizedBox(height: 16),
                    if (blog.title != null)
                      Text(
                        blog.title!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                          fontFamily: kLoraFont,
                        ),
                      ),
                    if (blog.title != null) SizedBox(height: 32),
                    if (blog.subTitle != null)
                      Text(
                        blog.subTitle!,
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          // fontSize: 48,
                          fontFamily: kLoraFont,
                        ),
                      ),
                    if (blog.subTitle != null) SizedBox(height: 16),
                    if (blog.content != null) Text(blog.content!),
                  ],
                ),
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
