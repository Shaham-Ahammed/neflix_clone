// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/News%20And%20Hot/widgets/news.dart';
import 'package:netflix_clone/Screens/News%20And%20Hot/widgets/suggestions_cotainers.dart';
import 'package:netflix_clone/value_notifiers.dart';

class NewsAndHot extends StatelessWidget {
  NewsAndHot({super.key});

  List<String> listviewNames = [
    "🍿 Coming Soon",
    "🔥 Everyone's watching",
    "🎮 Games",
    "🔝 Top Tv Shows",
    "🔝 Top Movies"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: SafeArea(
            child: FutureBuilder(
          future: loadupcomingMovies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData || snapshot.hasError) {
          return Container();
        } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsAndHotAppbarContainers(listviewNames: listviewNames),
                sizedBoxHeight(mediaqueryHeight(0.04, context)),
                Expanded(
                  child: ListView.builder(
                    itemCount: upcomingMovies.value.length,
                    itemBuilder: (context, value) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              sizedBoxWidth(mediaqueryWidth(0.01, context)),
                               ReleaseDate(index: value,),
                              sizedBoxWidth(mediaqueryWidth(0.04, context)),
                               ImageForNews(index: value,)
                            ],
                          ),
                          sizedBoxHeight(6),
                           TitleAndOverview(index: value,),
                          sizedBoxHeight(mediaqueryHeight(0.03, context))
                        ],
                      );
                    },
                  ),
                )
              ],
            );
          }}
        )));
  }
}

