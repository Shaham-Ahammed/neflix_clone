
  import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/search%20page/functions/search_api.dart';
import 'package:netflix_clone/value_notifiers.dart';

Padding searchBox(BuildContext context) {
    return Padding(
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
                  
                      searchMoviesAndTvShows(value);
                   
                  },
                  showCursor: true,
                  textAlign: TextAlign.start,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search games, shows, movies..."),
                )),
                SizedBox(width: mediaqueryWidth(0.05, context)),
                const Icon(Icons.mic),
                SizedBox(
                  width: mediaqueryWidth(0.05, context),
                ),
              ],
            ),
          ),
        );
  }