import 'package:fad_quizapp/Screens/Login/login_screen.dart';
import 'package:fad_quizapp/Screens/SignUp/sign_up.dart';
import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ratio to screen

    return Background(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to FAD QUIZ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedBox(
              text: "SIGN UP",
              press: () {},
            ),
            RoundedBox(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Expanded(
          child: Container(
            width: double.infinity,
            child: SafeArea(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Welcome to FAD QUIZ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  SizedBox(height: size.height * 0.07),
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    height: size.height * 0.45,
                  ),
                  SizedBox(height: size.height * 0.04),
                  Text(
                    "Test your Knowledge by answering random questions",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.04),
                  Center(
                      child: Container(
                          height: size.height * 0.08,
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(15.0),
                              color: kPrimaryColor),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ))),
                  SizedBox(height: size.height * 0.03),
                  Center(
                      child: Container(
                          height: size.height * 0.08,
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15.0),
                              color: kPrimaryLightColor),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    )
        )
      )
    );
  }
}
