import 'package:fitness_daily/presentation/screens/home/featured_post_section.dart';
import 'package:fitness_daily/presentation/screens/home/quote_section.dart';
import 'package:fitness_daily/presentation/screens/home/recent_posts_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 75),
              Image.asset(
                'assets/images/cover.png',
                height: 400,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Fitness Daily',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              FeaturedPostSection(),
              RecentPostsSection(),
              QuoteSection(),
              SizedBox(height: 250),
            ],
          ),
        ),
      ),
    );
  }
}
