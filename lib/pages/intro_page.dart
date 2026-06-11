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
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 240,
                ),
              ), // Image.asset
                const SizedBox(height: 48),
              // title
               const Text(  'Just Do It',
               style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
               ),
               ),

               const SizedBox(height: 24),

                 // sub title
                const Text('Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                 fontSize: 16,
                 color: Colors.grey,
                  ), // TextStyle
                  textAlign: TextAlign.center,
                  ), 

              // start now button
            ],
          ),
        ), // Column
      ), // Center
    ); // Scaffold

    
  }
}
