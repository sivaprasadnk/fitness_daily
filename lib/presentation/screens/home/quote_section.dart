import 'package:fitness_daily/core/constants.dart';
import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100),
          Image.asset(
            'assets/images/quote.png',
            height: 75,
          ),
          SizedBox(height: 50),
          Text(
            quote,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
