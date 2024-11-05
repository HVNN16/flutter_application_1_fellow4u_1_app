import 'package:flutter/material.dart';
import 'package:flutter_application_1_fellow4u_1/login.dart';
import 'package:flutter_application_1_fellow4u_1/checkemail.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                  Center(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Input your email, we will send you an instruction to reset your password.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Checkemail()));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Colors.green,
                      ),
                      child: Text('Send'),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Back to...?",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
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
