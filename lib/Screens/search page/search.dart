import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/search%20page/search_api.dart';
import 'package:netflix_clone/value_notifiers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        leading: const Icon(Icons.arrow_back),
        actions: [
          Icon(
            Icons.cast,
            size: 20,
            color: whitecolor,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: double.infinity,
              height: mediaqueryHeight(0.06, context),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Row(
                children: [
                  SizedBox(
                    width: mediaqueryWidth(0.05, context),
                  ),
                  const Icon(Icons.search),
                  SizedBox(
                    width: mediaqueryWidth(0.05, context),
                  ),
                  Expanded(
                      child: TextField(
                    onChanged: (value) {
                      isLoading.value = true;
                      setState(() {
                        searchMoviesAndTvShows(value);
                      });
                    },
                    showCursor: true,
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search games, shows, movies..."),
                  )),
                  SizedBox(width: mediaqueryWidth(0.05, context)),
                  GestureDetector(
                      onTap: () {
                        searchMoviesAndTvShows("S");
                      },
                      child: const Icon(Icons.mic)),
                  SizedBox(
                    width: mediaqueryWidth(0.05, context),
                  ),
                ],
              ),
            ),
          ),
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
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: SizedBox(
                                            width:
                                                mediaqueryWidth(0.25, context),
                                            height: mediaqueryHeight(
                                                0.073, context),
                                            child: Image(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(urls))),
                                      ),
                                      SizedBox(
                                        width: mediaqueryWidth(0.02, context),
                                      ),
                                      Expanded(
                                        child: Text(
                                          title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(Icons.play_circle_fill)
                                    ],
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
