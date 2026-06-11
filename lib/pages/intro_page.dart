import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Center(
          child: Column(
            children: [
              // logo
              Image.asset(
                'lib/images/nike.png',
                height: 240,
              ), // Image.asset
          
              // title
          
              // sub title
          
              // start now button
            ],
          ),
        ), // Column
      ), // Center
    ); // Scaffold

    
  }
}
