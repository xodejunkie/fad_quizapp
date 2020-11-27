// import 'package:fad_quizapp/components/bottomNavBar.dart';
import 'package:fad_quizapp/components/bottomNavBar.dart';
import 'package:fad_quizapp/components/subjects_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class AllSubjects extends StatefulWidget {
  @override
  _AllSubjectsState createState() => _AllSubjectsState();
}

class _AllSubjectsState extends State<AllSubjects>
    with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categoryTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  final List<Tab> categoryTabs = [
    Tab(
      child: Text(
        'All',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'Art',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'English',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'General',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'Mathematics',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'Science',
        style: TextStyle(fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'Technology',
        style: TextStyle(fontSize: 13),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(''),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                              hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                              prefixIcon: Icon(FontAwesomeIcons.search,
                                  color: Color(0xFFBDBDBD)),
                              fillColor: Colors.grey),
                        ),
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 20),
                        width: screenSize.width,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: Color(0xFFBDBDBD),
                          ),
                        )),
                        child: TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Color(0xFFBDBDBD),
                            indicatorColor: Colors.black,
                            indicatorWeight: 3,
                            controller: _tabController,
                            isScrollable: true,
                            indicatorPadding: EdgeInsets.only(
                              left: 1,
                              right: 1,
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: categoryTabs),
                      ),
                      Expanded(
                        child: Container(
                          child:
                              TabBarView(controller: _tabController, children: [
                            AllSubjectsWidget(screenSize: screenSize),
                            ArtsTab(screenSize: screenSize),
                            EnglishTab(screenSize: screenSize),
                            GeneralPaperTab(screenSize: screenSize),
                            MathematicsTab(screenSize: screenSize),
                            ScienceTab(screenSize: screenSize),
                            TechnologyTab(screenSize: screenSize),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MyNavBar()
            ],
          ),
        ),
      ),
    );
  }
}

class TechnologyTab extends StatelessWidget {
  const TechnologyTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF8C9EFF),
            subject: 'Computer \nTechnology',
            backgroundImage: SvgPicture.asset('assets/icons/024-monitor-2.svg',
                height: 50, width: 60, color: Color(0xFFA4AEFF)),
          ),
        ],
      ),
    );
  }
}

class ScienceTab extends StatelessWidget {
  const ScienceTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF64B5F6),
            subject: 'Integrated \nScience',
            backgroundImage: SvgPicture.asset('assets/icons/cell.svg',
                height: 125, width: 100, color: Colors.white24),
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFFFFB74D),
            subject: 'Intro \nTech',
            backgroundImage: SvgPicture.asset('assets/icons/rocket.svg',
                height: 120, width: 100, color: Colors.white24),
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF7371CE),
            subject: 'Basic \nChemistry',
            backgroundImage: SvgPicture.asset(
                'assets/icons/heating-a-flask-with-testing-liquid-on-fire-flames.svg',
                height: 100,
                width: 100,
                color: Colors.white24),
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF00695C),
            subject: 'Agric \nCulture',
            backgroundImage: SvgPicture.asset(
                'assets/icons/plant-with-leaves.svg',
                height: 100,
                width: 120,
                color: Colors.white24),
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFFFF8A80),
            subject: 'Health \nEducation',
            backgroundImage: SvgPicture.asset('assets/icons/medical.svg',
                height: 70, width: 100, color: Colors.white24),
          ),
        ],
      ),
    );
  }
}

class GeneralPaperTab extends StatelessWidget {
  const GeneralPaperTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            //TODO: The color and image of this Geography card needs to be changed when available
            screenSize: screenSize,
            cardColor: Color(0xFFFFD180),
            subject: 'Geography',
            backgroundImage: SvgPicture.asset('assets/icons/024-monitor-2.svg',
                height: 50, width: 60, color: Colors.white24),
          ),
        ],
      ),
    );
  }
}

class MathematicsTab extends StatelessWidget {
  const MathematicsTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFFFF8A65),
            subject: 'Algebra',
            backgroundImage: SvgPicture.asset(
              'assets/icons/maths signs.svg',
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}

class EnglishTab extends StatelessWidget {
  const EnglishTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF80CBC4),
            subject: 'Dictation',
            backgroundImage: SvgPicture.asset(
                'assets/icons/alphabet in box.svg',
                color: Colors.white24,
                height: 80),
          ),
        ],
      ),
    );
  }
}

class ArtsTab extends StatelessWidget {
  const ArtsTab({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFFAD71C5),
            subject: 'Fine Art',
            backgroundImage: SvgPicture.asset('assets/icons/palette.svg',
                color: Colors.white24, height: 70),
          ),
        ],
      ),
    );
  }
}

class AllSubjectsWidget extends StatelessWidget {
  const AllSubjectsWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
      child: GridView.count(
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 20),
        children: [
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF8C9EFF),
            subject: 'Computer \nTechnology',
            backgroundImage: SvgPicture.asset('assets/icons/024-monitor-2.svg',
                height: 50, width: 60, color: Color(0xFFA4AEFF)),
            category: 'Technology',
          ),
          SubjectsCard(
            //TODO: The color and image of this Geography card needs to be changed when available
            screenSize: screenSize,
            cardColor: Color(0xFFFFD180),
            subject: 'Geography',
            backgroundImage: SvgPicture.asset('assets/icons/024-monitor-2.svg',
                height: 50, width: 60, color: Colors.white24),
            category: 'General..',
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFFFFCC80),
            subject: 'Chemistry',
            backgroundImage: SvgPicture.asset('assets/icons/chemistry.svg',
                height: 100, color: Color(0xFFFFE0B2)),
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
            backgroundImage: SvgPicture.asset('assets/icons/palette.svg',
                color: Colors.white24, height: 70),
            category: 'Art',
          ),
          SubjectsCard(
            screenSize: screenSize,
            cardColor: Color(0xFF64B5F6),
            subject: 'Verbal \nReasoning',
            backgroundImage: SvgPicture.asset('assets/icons/male-brain.svg',
                color: Colors.white24, height: 110),
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
            backgroundImage: SvgPicture.asset('assets/icons/cycling.svg',
                color: Colors.white24, height: 70),
            category: 'Sports',
          ),
        ],
      ),
    );
  }
}
