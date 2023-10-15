import 'package:flutter/material.dart';
import 'package:trackingbus_dart/screenpage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // late bool isObscurePassword;

  get isObscurePassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: const Text('Edit Profile',
        style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.black87,
        //   ),
        //   onPressed: (){
        //     // Navigator.push(
        //     //   context,
        //     //   MaterialPageRoute(builder: (context) => WidgetBottom()), // Replace YourNextScreen() with the screen you want to navigate to
        //     // );
        //   },
        // ),
        // actions: [
        //   IconButton(
        //     onPressed: (){},
        //       icon: const Icon(
        //         Icons.settings,
        //         color: Colors.black87,
        //       ),
        //   ),
        // ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/loginuser.png')
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.red.shade700,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),

                        ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              buildTextField("Full Name",  'Aditya', false),
              buildTextField("Email",  'aditya@gmail.com', false),
              // buildTextField("Password",  '******', true),
              buildTextField("Location",  'Gurgaon', false),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: (){},
                      child:  Text("CANCEL",
                      style: TextStyle(fontSize: 15,
                      letterSpacing: 2,
                        color: Colors.black,
                      ),
                      ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 50),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("SAVE", style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade800,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField ?
              IconButton(
                  onPressed: (){
                    // setState(() {
                    //   isObscurePassword = !isObscurePassword;
                    // });
                  },
                  icon: const Icon(Icons.remove_red_eye, color: Colors.grey)
        ): null,
          contentPadding: const EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
      ),
      ),
    );
  }
}
