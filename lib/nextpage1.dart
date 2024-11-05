import 'package:flutter/material.dart';
import 'nextpage2.dart'; // Ensure this file contains the definition for FourPage

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Background shape
                          Positioned(
                            top: 30, // Adjusted top position
                            child: Container(
                              height: 300,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.shade100,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/Vector 8.png', 
                            width: 376,   
                            height: 376.03,  
                          ),
                          Positioned(
                            top: 50, // Adjusted top position
                            left: 176.52, 
                            child: Image.asset(
                              'assets/images/Group 99.png',  
                              width: 153.61, 
                              height: 136.68,
                            ),
                          ),
                          Positioned(
                            top: 58, // Adjusted top position
                            left: 41, 
                            child: Image.asset(
                              'assets/images/Group 98.png',  
                              width: 154.18, 
                              height: 128.8,
                            ),
                          ),
                          Positioned(
                            top: 160, // Adjusted top position
                            left: 138.97, 
                            child: Image.asset(
                              'assets/images/Group 101.png',  
                              width: 97.66, 
                              height: 291.52,
                            ),
                          ),
                          Positioned(
                            top: 20, // Adjusted top position
                            left: 222, 
                            child: Image.asset(
                              'assets/images/Vector 5.png',  
                              width: 79, 
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Title and Subtitle
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Many tours around the world',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Skip Button positioned in the bottom-right corner
          Positioned(
            bottom: 8, // Adjusted bottom position
            right: 16,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourPage()), // Navigate to the next page
                );
              },
              child: Text(
                'SKIP',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold), // Adjust the style as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
