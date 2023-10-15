import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'screenpage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.w,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                // color: Colors.red, // Background color set to red
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          'images/redbus.png',
                          height: 350,
                          width: 350,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(padding: EdgeInsets.only(bottom: 25)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the main page when the Login button is pressed
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => WidgetBottom()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(500, 50)
                      ),
                      child:const Text(
                        "LOGIN  WITH  EMAIL",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "or",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        _launchGoogleSignIn(); // Call the function to launch Google sign-in page
                      },
                      child: Image.asset(
                        'images/google.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(height: 30),
                     Text(
                      'Forgot Password? ',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    const SizedBox(height: 10),
                    const Text('Click Here',style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch the Google sign-in page
  _launchGoogleSignIn() async {
    const url = 'https://accounts.google.com'; // URL for Google sign-in page
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

