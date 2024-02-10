import 'package:flutter/material.dart';

ValueNotifier<List<dynamic>> trendingMovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> popularMovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> topRatedMovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> topRatedTvShows = ValueNotifier([]);
ValueNotifier<List<dynamic>> upcomingMovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> popularTvShows = ValueNotifier([]);
ValueNotifier<List<dynamic>> searchMovieTitles = ValueNotifier([]);
ValueNotifier<List<dynamic>> searchTvShowTitles = ValueNotifier([]);
ValueNotifier<List<dynamic>> searchTvShowAndMoviesTitles = ValueNotifier([]);
ValueNotifier<bool> isLoading = ValueNotifier(false);