import 'package:fad_quizapp/Screens/Login/login_screen.dart';
import 'package:fad_quizapp/Screens/Welcome/components/background.dart';
import 'package:fad_quizapp/components/rounded_button.dart';
import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ratio to screen
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
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
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
