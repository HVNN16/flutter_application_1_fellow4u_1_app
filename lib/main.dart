import 'package:flutter/material.dart';
import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fellow4U',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color and icons
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF00C7B0), // Green background color
            ),
            child: Stack(
              children: [
                // Clouds and decorative icons
                Positioned(
                  top: 50,
                  right: 20,
                  child: Icon(Icons.cloud, size: 100, color: Colors.white.withOpacity(0.3)),
                ),
                Positioned(
                  top: 120,
                  left: 20,
                  child: Icon(Icons.cloud, size: 80, color: Colors.white.withOpacity(0.4)),
                ),
                Positioned(
                  bottom: 30,
                  right: 50,
                  child: Icon(Icons.local_florist, size: 100, color: Colors.white.withOpacity(0.3)),
                ),
                Positioned(
                  bottom: 100,
                  left: 30,
                  child: Icon(Icons.beach_access, size: 80, color: Colors.yellow),
                ),
                Positioned(
                    left: 205,
                    top: 86,
                    child: 
                       Image.asset(
                        "assets/images/Vector 1.png" ,width: 209,height: 96,
                      ),
                    ),
                    Positioned(
                    left: 389,
                    top: 50.39,
                    child: 
                       Image.asset(
                        "assets/images/Vector.png" ,width: 73.7,height: 44.22,
                      ),
                    ),
                    Positioned(
                    left: 315,
                    top: 59,
                    child: 
                       Image.asset(
                        "assets/images/Vector 6.png" ,width: 57,height: 25,
                      ),
                    ),
              ],
            ),
          ),
          // Logo and text in the center
          Center(
            child: Container(
              // padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.7),
                // borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo image
                  // Image.asset(
                  //   'assets/logo.png', // Ensure you have this image in the assets folder
                  //   width: 150,
                  // ),
                  // SizedBox(height: 10),
                  // Text(
                  //   'Fellow4U',
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  Image.asset("assets/images/Logo.png",width: 206,height: 85),
                  SizedBox(height: 20),
                  // 'Get Started' button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF1FD7C1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

