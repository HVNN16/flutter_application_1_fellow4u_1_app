import 'package:flutter/material.dart';
import 'nextpage1.dart'; // Make sure this file contains the definition for ThirdPage

class NextPage extends StatelessWidget {
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
                            'assets/images/Vector 7.png', 
                            width: 350,   
                            height: 470,  
                          ),
                          Positioned(
                            top: 139, // Adjusted top position
                            left: 67, 
                            child: Image.asset(
                              'assets/images/Group 108.png',  
                              width: 130, 
                              height: 280,
                            ),
                          ),
                          Positioned(
                            top: 136, // Adjusted top position
                            left: 173.86, 
                            child: Image.asset(
                              'assets/images/Group 107.png',  
                              width: 154.16, 
                              height: 282.3,
                            ),
                          ),
                          Positioned(
                            top: 55, // Adjusted top position
                            left: 49, 
                            child: Image.asset(
                              'assets/images/Vector 5.png',  
                              width: 91.26, 
                              height: 39.57,
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
                        'Find a local guide easily',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'With Fellow4U, you can find a local guide for your trip easily and explore as the way you want.',
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
                  MaterialPageRoute(builder: (context) => ThirdPage()), // Navigate to the next page
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
