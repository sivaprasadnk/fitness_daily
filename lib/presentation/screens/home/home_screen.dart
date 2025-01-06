import 'package:auto_route/auto_route.dart';
import 'package:fitness_daily/core/common_strings.dart';
import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/screens/about/about_screen.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/featured_post_section.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/footer_widget.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/menu_icon.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/quote_section.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/recent_posts_section.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          kAppName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: (width > mobileBreakPoint)
            ? [
                GestureDetector(
                  onTap: () {},
                  child: Text('Home'),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  child: Text('About'),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {},
                  child: Text('Contact'),
                ),
                SizedBox(width: 50),
              ]
            : [
                MenuIcon(),
                SizedBox(width: 16),
              ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/cover1.jpg',
                height: 400,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              width > mobileBreakPoint
                  ? SizedBox(height: 50)
                  : SizedBox(height: 0),
              // Center(
              //   child: Column(
              //     children: [
              //       Text(
              //         'Welcome to',
              //         style: TextStyle(
              //           fontWeight: FontWeight.w300,
              //           fontSize: 20,
              //         ),
              //       ),
              //       Text(
              //         kAppName,
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 30,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              if (width > mobileBreakPoint) SizedBox(height: 75),
              FeaturedPostSection(),
              RecentPostsSection(),
              QuoteSection(),
              SizedBox(height: context.isLargeDevice ? 150 : 50),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
