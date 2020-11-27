import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SubjectsCard extends StatelessWidget {
  const SubjectsCard(
      {Key key,
      @required this.screenSize,
      @required this.cardColor,
      @required this.subject,
      @required this.backgroundImage,
      this.category,
      this.levels})
      : super(key: key);

  final Size screenSize;
  final Color cardColor;
  final String category;
  final String subject;
  final String levels;
  final SvgPicture backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 20, bottom: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: cardColor),
        child: Stack(children: [
          Positioned(right: 5, bottom: 5, child: backgroundImage),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              category == null
                  ? Container()
                  : Container(
                      height: 20,
                      padding:
                          EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white24,
                      ),
                      child: Center(
                        widthFactor: 1.0,
                        child: Text(category,
                            style:
                                TextStyle(fontSize: 10, color: Colors.white)),
                      )),
              Text(
                subject,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              Text(levels ?? '20 Levels', style: TextStyle(color: Colors.white))
            ],
          ),
        ]),
      ),
    );
  }
}
