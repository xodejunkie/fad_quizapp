import 'package:fad_quizapp/Screens/SignUp/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fad_quizapp/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        leading: IconButton(icon: Icon(Icons.arrow_back, size: 30,), onPressed: () {}),
        actions: [
          FlatButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SignUpScreen()
            ));
          }, child: Text("Sign Up", style: TextStyle(fontSize: 20),),

          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0, top: 10),
              //   child: Text("Login",
              //       style: TextStyle(fontSize: 35, color: Colors.black)),
              // ),

              Container(
                padding: EdgeInsets.only(left: 25, right: 20),
                height: size.height/1.8,
               // margin: EdgeInsets.only(top: size.height*0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",
                        style: TextStyle(fontSize: 35, color: Colors.black)),

                    SizedBox(
                      height: size.height * 0.05,
                    ),

                    Text("Email or Phone Number",
                        style: TextStyle(
                            fontSize: 20, color: Colors.black.withOpacity(0.6))),
                    TextFormField(
                      decoration: InputDecoration(),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text("Password",
                        style: TextStyle(
                            fontSize: 20, color: Colors.black.withOpacity(0.6))),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text("Forgot Password?",
                          style: TextStyle(
                              fontSize: 22),),
                    ),

                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Center(
                        child: Container(
                            width: double.infinity,
                            height: size.height*0.05,
                            decoration: BoxDecoration(
                                border: Border.all(color: kPrimaryColor),
                                borderRadius: BorderRadius.circular(15.0),
                                color: kPrimaryColor
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            )))
                  ],
                ),
              ),
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("_______", style: TextStyle(
                      fontSize: 20),
                  overflow: TextOverflow.clip,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(" Or Login With ", style: TextStyle(
                        fontSize: 20),),
                  ),
                  Text("________", style: TextStyle(
                      fontSize: 20),
                  overflow: TextOverflow.clip,
                  maxLines: 1,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all( color:  Colors.black54),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(child: IconButton(icon: Icon(FontAwesomeIcons.google, color: Colors.red[400],), onPressed: () { },)),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all( color:  Colors.black54),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(child: IconButton(icon: Icon(FontAwesomeIcons.facebookF, color: Colors.blue[900],), onPressed: () { },)),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all( color:  Colors.black54),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(child: IconButton(icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue), onPressed: () { },)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
