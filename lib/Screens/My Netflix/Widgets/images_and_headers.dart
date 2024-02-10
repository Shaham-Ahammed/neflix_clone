import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/My%20Netflix/Widgets/trailers_watched.dart';
import 'package:netflix_clone/Screens/home/home_widgets/top_rated_movies.dart';
import 'package:netflix_clone/value_notifiers.dart';

class TopRatedImage extends StatelessWidget {
  const TopRatedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TopRatedMovies(
          futureFunction: loadtopRatedMovies(),
          valueNotifier: topRatedMovies),
    );
  }
}

class TopRatedText extends StatelessWidget {
  const TopRatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: mediaqueryWidth(0.06, context),
      ),
      child: mytext(
          "Top Rated Movies", 17, FontWeight.w600,Colors.white70));
  }
}

class TrailersImage extends StatelessWidget {
  const TrailersImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TrailersWatched(
          futureFunction: loadtrendingMovies(),
          valueNotifier: trendingMovies),
    );
  }
}

class TrailersText extends StatelessWidget {
  const TrailersText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: mediaqueryWidth(0.06, context),
        ),
        child: mytext("Trailers You've Watched", 17, FontWeight.w600,Colors.white70));
  }
}

class TvShowsImage extends StatelessWidget {
  const TvShowsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TopRatedMovies(
          futureFunction: loadtrendingMovies(),
          valueNotifier: trendingMovies),
    );
  }
}

class TvShowsText extends StatelessWidget {
  const TvShowsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: mediaqueryWidth(0.06, context),
        ),
        child: mytext(
            "TV Shows & Movies You've Liked", 17, FontWeight.w600,Colors.white70));
  }
}