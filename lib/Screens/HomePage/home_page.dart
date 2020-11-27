import 'package:fad_quizapp/all_subjects/all_subjects.dart';
import 'package:fad_quizapp/components/bottomNavBar.dart';
import 'package:fad_quizapp/components/subjects_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DropdownMenuItem> classesList = [
    DropdownMenuItem(
      child: Text('Primary 1'),
      value: 'Primary 1',
    ),
    DropdownMenuItem(
      child: Text('Primary 2'),
      value: 'Primary 2',
    ),
    DropdownMenuItem(
      child: Text('Primary 3'),
      value: 'Primary 3',
    ),
    DropdownMenuItem(
      child: Text('Primary 4'),
      value: 'Primary 4',
    ),
    DropdownMenuItem(
      child: Text('Primary 5'),
      value: 'Primary 5',
    ),
    DropdownMenuItem(
      child: Text('Primary 6'),
      value: 'Primary 6',
    ),
  ];

  @override
  void initState() {
    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          backgroundColor: Color(0xFF757575),
          context: context,
          builder: (builder) {
            return ClassesBottomSheet(
              context: context,
              classesList: classesList,
            );
          });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 30,
                              ),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                      hintStyle:
                                          TextStyle(color: Color(0xFFBDBDBD)),
                                      prefixIcon: Icon(FontAwesomeIcons.search,
                                          color: Color(0xFFBDBDBD)),
                                      fillColor: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 5, top: 30, bottom: 10),
                              height: screenSize.height * 0.21,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFFEFEBE9)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Hello Peter',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 230,
                                          child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur...')),
                                      SvgPicture.asset(
                                        'assets/icons/hero image.svg',
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 35,
                                    width: 120,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFD740),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          'GO PREMIUM',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 50, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Popular Subjects',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AllSubjects()));
                                      },
                                      child: Text('See All'))
                                ],
                              ),
                            ),
                            GridView.count(
                              controller:
                                  ScrollController(keepScrollOffset: false),
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              padding: EdgeInsets.only(top: 20),
                              children: [
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFF8C9EFF),
                                  subject: 'Computer \nTechnology',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/024-monitor-2.svg',
                                      height: 50,
                                      width: 60,
                                      color: Color(0xFFA4AEFF)),
                                  category: 'Technology',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFFFFCC80),
                                  subject: 'Chemistry',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/chemistry.svg',
                                      height: 100,
                                      color: Color(0xFFFFE0B2)),
                                  category: 'Science',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFFFF8A65),
                                  subject: 'Algebra',
                                  backgroundImage: SvgPicture.asset(
                                    'assets/icons/maths signs.svg',
                                    color: Colors.white24,
                                  ),
                                  category: 'Mathematics',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFF80CBC4),
                                  subject: 'Dictation',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/alphabet in box.svg',
                                      color: Colors.white24,
                                      height: 80),
                                  category: 'English',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFFAD71C5),
                                  subject: 'Fine Art',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/palette.svg',
                                      color: Colors.white24,
                                      height: 70),
                                  category: 'Art',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFF64B5F6),
                                  subject: 'Verbal \nReasoning',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/male-brain.svg',
                                      color: Colors.white24,
                                      height: 110),
                                  category: 'Reasoning',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFFFF8A80),
                                  subject: 'Islam',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/night-moon-and-star-shapes.svg',
                                      color: Colors.white24,
                                      height: 100),
                                  category: 'Religion',
                                ),
                                SubjectsCard(
                                  screenSize: screenSize,
                                  cardColor: Color(0xFF5A419C),
                                  subject: 'Outdoor \nActivity',
                                  backgroundImage: SvgPicture.asset(
                                      'assets/icons/cycling.svg',
                                      color: Colors.white24,
                                      height: 70),
                                  category: 'Sports',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MyNavBar()
          ],
        ),
      ),
    );
  }
}

class ClassesBottomSheet extends StatefulWidget {
  const ClassesBottomSheet({
    Key key,
    @required this.context,
    @required this.classesList,
  }) : super(key: key);

  final BuildContext context;

  final List<DropdownMenuItem> classesList;

  @override
  _ClassesBottomSheetState createState() => _ClassesBottomSheetState();
}

class _ClassesBottomSheetState extends State<ClassesBottomSheet> {
  String chosenClass = 'Primary 1';
  void changeValue(value) {
    setState(() {
      chosenClass = value;
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      height: MediaQuery.of(context).size.height * 0.40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Select Your Class',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: chosenClass,
                icon: Icon(FontAwesomeIcons.chevronDown),
                onChanged: (value) {
                  changeValue(value);
                },
                items: widget.classesList,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFFFD740)),
              child: Center(
                child: Text('Start', style: TextStyle(color: Colors.black)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
