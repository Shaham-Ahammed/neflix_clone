import 'package:netflix_clone/Screens/News%20And%20Hot/functions/date_convertion.dart';
import 'package:netflix_clone/api_key.dart';
import 'package:netflix_clone/value_notifiers.dart';
import 'package:tmdb_api/tmdb_api.dart';

TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, readAccessToken),
    logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

String imageUrl = "https://image.tmdb.org/t/p/w500";

loadtrendingMovies() async {
  Map trendingResult = await tmdbWithCustomLogs.v3.trending.getTrending();
  // print("hello shaham $trendingResult");
  trendingMovies.value = trendingResult['results'];
}

loadpopularMovies() async {
  Map popularMoviesResult = await tmdbWithCustomLogs.v3.movies.getPopular();
  // print("hello jack $popularMoviesResult");

  popularMovies.value = popularMoviesResult['results'];
  final popular = await tmdbWithCustomLogs.v3.movies
      .getDetails(popularMovies.value[0]['id']);
  print(popular);
}

loadupcomingMovies() async {
  Map upcomingMoviesResult = await tmdbWithCustomLogs.v3.movies.getUpcoming();
  // print("hello upcoming $upcomingMoviesResult");
  upcomingMovies.value = upcomingMoviesResult['results'];
  upcomingMovies.value.forEach((element) {
    formatDate(element['release_date']);
  });
}

loadtopRatedMovies() async {
  Map topRatedMoviesResult = await tmdbWithCustomLogs.v3.movies.getTopRated();
  // print("hello top rated $topRatedMoviesResult");
  topRatedMovies.value = topRatedMoviesResult['results'];
}

loadTopRatedTvShows() async {
  Map topRatedTvShowsResult = await tmdbWithCustomLogs.v3.tv.getTopRated();
  // print("hello trending $topRatedTvShowsResult");
  topRatedTvShows.value = topRatedTvShowsResult['results'];
}

loadpopularTvShows() async {
  Map popularTvShowsResult = await tmdbWithCustomLogs.v3.tv.getPopular();
  // print("hello load popular $popularTvShowsResult");
  popularTvShows.value = popularTvShowsResult['results'];
}
