import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/Bottom%20Navigation/bottom_navigation_functions.dart';
import 'package:netflix_clone/Screens/home/home_page.dart';
import 'package:netflix_clone/Screens/My%20Netflix/my_netflix.dart';
import 'package:netflix_clone/Screens/News%20And%20Hot/news_and_hot.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;
  final List<Widget> _pages = [Home(), NewsAndHot(), MyNetflix()];
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        leading: buildLeadingWidget(currentPage),
        actions: buildTrailingWidget(currentPage,context),
        title: buildTitleWidget(currentPage),
      ),
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 18,
        backgroundColor: blackColor,
        currentIndex: currentPage,
        onTap: (values) {
          setState(() {
            currentPage = values;
            _pageController.animateToPage(currentPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.newspaper), label: "News & Hot"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "My Netflix")
        ],
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        elevation: 8,
      ),
    );
  }

 
}
