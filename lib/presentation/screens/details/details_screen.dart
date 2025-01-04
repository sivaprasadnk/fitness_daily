import 'package:fitness_daily/core/common_colors.dart';
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
        title: Text('Fitness Daily'),
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
                  Text(blog.date!),
                  SizedBox(height: 16),
                  Text(
                    blog.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(blog.subTitle!),
                  SizedBox(height: 16),
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
