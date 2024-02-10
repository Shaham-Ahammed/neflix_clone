// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/value_notifiers.dart';

searchMoviesAndTvShows(String query) async {
  searchTvShowAndMoviesTitles.value.clear();
  Map searchMovieResult = await tmdbWithCustomLogs.v3.search.queryMovies(query);
  // print("search $searchResult");
  searchMovieTitles.value = searchMovieResult['results'];
  Map searchTvResult = await tmdbWithCustomLogs.v3.search.queryTvShows(query);
  // print("search $searchResult");
  searchTvShowTitles.value = searchTvResult['results'];
  searchTvShowAndMoviesTitles.value
      .addAll([...searchTvShowTitles.value, ...searchMovieTitles.value]);
  searchTvShowAndMoviesTitles.notifyListeners();
  isLoading.value = false;
  isLoading.notifyListeners();
}
