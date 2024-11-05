import 'package:flutter/material.dart';
import 'package:flutter_application_1_fellow4u_1/login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? _selectedOption = 'Traveler'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 150.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: GreenClipPath(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "assets/images/Group 3.png",
                      ),
                    ),
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
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  // Radio buttons for Traveler and Guide selection
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Traveler'),
                          leading: Radio<String>(
                            value: 'Traveler',
                            groupValue: _selectedOption,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Guide'),
                          leading: Radio<String>(
                            value: 'Guide',
                            groupValue: _selectedOption,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // First Name and Last Name fields in one row
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your first name',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Space between the two fields
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your last name',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between rows

                  // Single text fields for Email, Password, Country, and Confirm Password
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10), // Space between password field and validation message
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0), // Thay đổi giá trị nếu cần thụt vào nhiều hơn
                    child: Text(
                      'Password must be at least 8 characters long!',
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                            ),
                  ),
                  
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Country',
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your country',
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),
                  
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: UnderlineInputBorder(),
                      hintText: 'Confirm your password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Code to execute when the button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Colors.green,
                      ),
                      child: Text('Sign Up'),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "By Signing Up, you agree to our Terms & Conditions",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Row with "Already have an account?" and "Sign In"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
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

class GreenClipPath extends StatelessWidget {
  final List<Widget> children;

  const GreenClipPath({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        color: const Color(0xFF00CEA6),
        child: Stack(
          children: children,
        ),
      ),
    );
  }
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 60, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
