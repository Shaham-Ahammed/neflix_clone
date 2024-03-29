// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/movie%20details/movie_details.dart';
import 'package:netflix_clone/value_notifiers.dart';

class TrendingMoviesHome extends StatelessWidget {
  dynamic futureFunction;
  ValueNotifier valueNotifier;
  TrendingMoviesHome({
    required this.futureFunction,
    required this.valueNotifier,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureFunction,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData || snapshot.hasError) {
          return Container();
        } else {
          return SizedBox(
            height: mediaqueryHeight(0.2, context),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: valueNotifier.value.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index != 0
                      ? const EdgeInsets.symmetric(horizontal: 5)
                      : const EdgeInsets.only(right: 5),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MovieDetailsPage(
                                  index: index,
                                  valueNotifier: trendingMovies,
                                )));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(5),
                        child: Image(
                          width: mediaqueryWidth(0.28, context),
                          image: NetworkImage(
                            imageUrl +
                                valueNotifier.value[index]['poster_path'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                );
              },
            ),
          );
        }
      },
    );
  }
}
