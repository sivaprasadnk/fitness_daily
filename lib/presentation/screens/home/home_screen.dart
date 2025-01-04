import 'package:fitness_daily/core/constants.dart';
import 'package:fitness_daily/presentation/screens/details/details_screen.dart';
import 'package:fitness_daily/presentation/screens/home/section_title.dart';
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
              SizedBox(height: 100),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'F E A T U R E D\nP O S T'),
                    SizedBox(height: 20),
                    Container(
                      height: 6,
                      width: 50,
                      color: Colors.orange,
                    ),
                    SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/cover.png',
                          height: 350,
                          width: 450,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 50),
                        SizedBox(
                          width: 400,
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20),
                              Text(blogs[0].date!),
                              SizedBox(height: 20),
                              Text(
                                blogs[0].title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                blogs[0].subTitle!,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Read More'),
                                  SizedBox(width: 10),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200),
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
                      child: ListView.builder(
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
              SizedBox(height: 250),
            ],
          ),
        ),
      ),
    );
  }
}
