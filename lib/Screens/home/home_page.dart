// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/home/home_widgets/appbar_containers.dart';
import 'package:netflix_clone/Screens/home/home_widgets/main_image.dart';
import 'package:netflix_clone/Screens/home/home_widgets/popular_movies_home.dart';
import 'package:netflix_clone/Screens/home/home_widgets/popular_tv_shows.dart';
import 'package:netflix_clone/Screens/home/home_widgets/top_rated_movies.dart';
import 'package:netflix_clone/Screens/home/home_widgets/top_rated_tv_shows.dart';
import 'package:netflix_clone/Screens/home/home_widgets/trending_movies_home.dart';
import 'package:netflix_clone/Screens/home/home_widgets/upcoming_movies_home.dart';
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
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarContainers(context),
                sizedBoxHeight(12),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: HomePageMainPic(),
                ),
                sizedBoxHeight(12),
                mytext("Trending Movies", 18, FontWeight.w600),
                sizedBoxHeight(10),
                TrendingMoviesHome(
                  futureFunction: loadtrendingMovies(),
                  valueNotifier: trendingMovies,
                ),
                sizedBoxHeight(18),
                mytext("Top Rated Movies", 18, FontWeight.w600),
                sizedBoxHeight(10),
                TopRatedMovies(
                    futureFunction: loadtopRatedMovies(),
                    valueNotifier: topRatedMovies),
                sizedBoxHeight(18),
                mytext("Upcoming Movies", 18, FontWeight.w600),
                sizedBoxHeight(10),
                UpcomingMovies(
                    futureFunction: loadupcomingMovies(),
                    valueNotifier: upcomingMovies),
                sizedBoxHeight(18),
                mytext("Popular Movies", 18, FontWeight.w600),
                sizedBoxHeight(10),
                PopularMovies(
                    futureFunction: loadpopularMovies(),
                    valueNotifier: popularMovies),
                sizedBoxHeight(18),
                mytext("Top Rated Tv Shows", 18, FontWeight.w600),
                sizedBoxHeight(10),
                TopRatedTvShows(
                    futureFunction: loadTopRatedTvShows(),
                    valueNotifier: topRatedTvShows),
                sizedBoxHeight(18),
                mytext("Popular Tv Shows", 18, FontWeight.w600),
                sizedBoxHeight(10),
                PopularTvShows(
                    futureFunction: loadpopularTvShows(),
                    valueNotifier: popularTvShows),
                sizedBoxHeight(18),
              ],
            ),
          ),
        );
      }),
    );
  }
}
