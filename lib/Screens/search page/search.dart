import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/Movie%20Details/movie_details.dart';
import 'package:netflix_clone/Screens/search%20page/widgets/appbar_searchpage.dart';
import 'package:netflix_clone/Screens/search%20page/widgets/search_box.dart';
import 'package:netflix_clone/Screens/search%20page/widgets/search_list_tile.dart';
import 'package:netflix_clone/value_notifiers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void dispose() {
    searchTvShowAndMoviesTitles.value.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
          child: Column(
        children: [
          searchBox(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaqueryHeight(
                    0.02,
                    context,
                  ),
                  vertical: mediaqueryHeight(0.0, context)),
              child: ValueListenableBuilder(
                valueListenable: searchTvShowAndMoviesTitles,
                builder: (context, value, child) {
                  return isLoading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : value.isEmpty
                          ? Expanded(
                              child: Center(
                              child: mytext("No results found", 16),
                            ))
                          : ListView.builder(
                              itemCount:
                                  searchTvShowAndMoviesTitles.value.length,
                              itemBuilder: (context, index) {
                                String title = value[index]['title'] ??
                                    value[index]['name'];
                                late String? url;
                                if (value[index]["poster_path"] != null) {
                                  url = value[index]["poster_path"];
                                } else {
                                  url = value[index]["backdrop_path"];
                                }

                                String urls = url != null
                                    ? imageUrl + url
                                    : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThW3vszDScLtuavCM31FfcECi3KJ9-wo2HqnX1wB0ewQ&s";

                                return SizedBox(
                                  height: mediaqueryHeight(0.1, context),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => MovieDetailsPage(
                                              valueNotifier:
                                                  searchTvShowAndMoviesTitles,
                                              index: index)));
                                    },
                                    child: SearchListTileDisplay(
                                        urls: urls, title: title),
                                  ),
                                );
                              },
                            );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
