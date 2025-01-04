import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/common_strings.dart';
import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.blog});
  final BlogModel blog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueGreyColor,
      appBar: AppBar(
        backgroundColor: kBlueGreyColor,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 100),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                border: Border.all(),
              ),
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.only(left: 200, right: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (blog.date != null)
                  Text(blog.date!),
                  if (blog.date != null)
                  SizedBox(height: 16),
                  if (blog.title != null)
                  Text(
                    blog.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (blog.title != null)
                  SizedBox(height: 32),
                  if (blog.subTitle != null)
                  Text(blog.subTitle!),
                  if (blog.subTitle != null)
                  SizedBox(height: 16),
                  if (blog.content != null)
                  Text(blog.content!),
                ],
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
