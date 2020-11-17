import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen>
    with SingleTickerProviderStateMixin {
  String subject = 'Basic Chemistry';
  int levels = 20;
  var curentLevel;

  Animation _animation;
  AnimationController _controller;
  @override
  void initState() {
    _animation;
    _controller = AnimationController(
      vsync: this,
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var level;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 5,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    child: Text(
                      subject,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 40,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit donec consectetur semper',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 50,
                    child: Icon(
                      Icons.person,
                      size: 110,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              ),
              child: ListView(
                padding: EdgeInsets.all(40),
                children: [
                  Text(
                    '$levels Levels',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Level $level',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$curentLevel of total $levels',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        CircularProgressIndicator(
                          value: 80 / 100,
                          backgroundColor: Colors.grey[200],
                          // valueColor: Color(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
