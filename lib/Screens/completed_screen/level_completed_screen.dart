import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LevelCompletedScreen extends StatefulWidget {
  @override
  _LevelCompletedScreenState createState() => _LevelCompletedScreenState();
}

class _LevelCompletedScreenState extends State<LevelCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: AppBar(
              title: Text("Level 2 Completed"),
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              )),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            Center(
              child: Container(
                child: SvgPicture.asset(
                  "assets/icons/cup.svg",
                  height: size.height * 0.30,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'You have earned ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '20 ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: 'Points',
                        style: TextStyle(
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ),
            Spacer(),
            Text("Next Level",
                style: TextStyle(color: Colors.black, fontSize: 18.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 30.0),
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "Level 03",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                              Text(
                                "0 of total 20",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ])),
                        Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey[300],
                                  width: 2.0,
                                )),
                            child: Icon(Icons.lock))
                      ])),
            ),
            SizedBox(height: 40.0),
            FlatButton(
              height: 50.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.yellow[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Upgrade To Continue",
                    style: TextStyle(
                      fontSize: 16.0
                    )
                  ),
                ],
              ),
              onPressed: () {},
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),

    );
  }
}
