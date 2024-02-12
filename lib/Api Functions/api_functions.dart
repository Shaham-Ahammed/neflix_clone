import 'package:netflix_clone/Screens/News%20And%20Hot/functions/date_convertion.dart';
import 'package:netflix_clone/value_notifiers.dart';
import 'package:tmdb_api/tmdb_api.dart';

String apiKey = "16b9186e4872aa7028d55cad9cfe6e0a";
String readAccessToken =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNmI5MTg2ZTQ4NzJhYTcwMjhkNTVjYWQ5Y2ZlNmUwYSIsInN1YiI6IjY1YzMxY2Q5MTU3OTRhMDE4MzU1NjY5ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.fshV5LatFc-G3gQTNIOOW2bwcDcXPYJ3dCkhSWXTn1o";

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
