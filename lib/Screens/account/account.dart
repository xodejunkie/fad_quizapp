import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';

class AccountSceen extends StatefulWidget {
  @override
  _AccountSceenState createState() => _AccountSceenState();
}

class _AccountSceenState extends State<AccountSceen> {
  String name = 'John Doe';

  String email = 'johndoe@gmail.com';

  int stars = 130;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Account',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                ),
              ),
              Spacer(flex: 7),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue[800],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              email,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber[200]),
                                Text(
                                  '$stars stars',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 20,
                          child: Icon(Icons.person_outline,color: kPrimaryLightColor,),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(flex: 3),
                      Expanded(child: Icon(Icons.arrow_forward_ios, size: 15)),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 20,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(flex: 3),
                      Expanded(child: Icon(Icons.arrow_forward_ios, size: 15)),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                          radius: 20,
                          child: Icon(
                            Icons.settings_outlined,
                            color: kPrimaryLightColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(flex: 3),
                      Expanded(child: Icon(Icons.arrow_forward_ios, size: 15)),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.amber[200],
                          radius: 20,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Theme',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(flex: 3),
                      Expanded(child: Icon(Icons.arrow_forward_ios, size: 15)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            )
          ],
        ),
        child: BottomNavigationBar(
          elevation: 10,
          backgroundColor: kPrimaryLightColor,
          iconSize: 25,
          currentIndex: currentIndex,
          unselectedItemColor: kSecondaryColor,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.picture_in_picture_alt),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.network_cell),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
