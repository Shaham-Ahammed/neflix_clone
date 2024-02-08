// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

import 'package:netflix_clone/Screens/home/home_widgets/appbar_containers.dart';
import 'package:netflix_clone/Screens/home/home_widgets/main_image.dart';
import 'package:netflix_clone/Screens/home/home_widgets/top_rated_movies.dart';
import 'package:netflix_clone/Screens/home/home_widgets/trending_movies_home.dart';
import 'package:netflix_clone/value_notifiers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: blackColor,
        leading: Transform.scale(
          scale: 0.5,
          child: Image.asset("assets/netflix_logo0.png"),
        ),
        actions: [
          Icon(
            Icons.cast,
            size: 20,
            color: whitecolor,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
          Icon(Icons.search, color: whitecolor),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
        ],
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarContainers(context),
                SizedBox(
                  height:12,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: HomePageMainPic(),
                ),
                SizedBox(
                  height: 12,
                ),
                mytext("Trending Movies", 18, FontWeight.w600),
                SizedBox(
                  height: 10,
                ),
                TrendingMoviesHome(
                  futureFunction: loadtrendingMovies(),
                  valueNotifier: trendingMovies,
                ),
                SizedBox(
                  height: 18,
                ),
                mytext("Top Rated Movies", 18,FontWeight.w600),
                  SizedBox(
                  height: 10,
                ),
                TopRatedMovies(futureFunction: loadtopRatedMovies(), valueNotifier: topRatedMovies),
                SizedBox(
                  height: 18,
                ),
                mytext("Upcoming Movies", 18,FontWeight.w600),
                  SizedBox(
                  height: 10,
                ),
                TopRatedMovies(futureFunction: loadupcomingMovies(), valueNotifier: upcomingMovies),
              ],
            ),
          ),
        );
      }),
    );
  }
}
