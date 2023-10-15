import 'package:flutter/material.dart';
import 'login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool loginButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 50, right: 30, left: 30),
            child: Image.asset('images/redbus.jpg'),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
            ),
            const SizedBox(height: 30), // Add some spacing between image and text
            const Text(
              'Bus Tracking App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'track where you wanna go',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(bottom: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:() {
                  // setState(() {
                  //   loginButtonPressed = true;
                  // });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()), // Replace YourNextScreen() with the screen you want to navigate to
                  );
                } ,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 50),
                  backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
                  // onPrimary: Colors.black,
                ),
                child: const Text('LOGIN',
                style: TextStyle(color: Colors.white,fontSize: 13),
                ),
            ),
            const SizedBox(width: 40),
            ElevatedButton(
              onPressed: (){
                // setState(() {
                //   loginButtonPressed = true;
                // });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()), // Replace YourNextScreen() with the screen you want to navigate to
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 50),
                backgroundColor: Colors.red.shade700,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
                // onPrimary: Colors.black,
              ),
              child: const Text("SIGNUP",
              style: TextStyle(color: Colors.black,fontSize: 13),
              ),
            ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
