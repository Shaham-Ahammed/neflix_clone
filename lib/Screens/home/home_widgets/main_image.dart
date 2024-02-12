  import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/home/home_widgets/appbar_containers.dart';
import 'package:netflix_clone/value_notifiers.dart';

class HomePageMainPic extends StatelessWidget {
  const HomePageMainPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadtrendingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData || snapshot.hasError) {
          return Container();
        } else {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: mediaqueryHeight(0.6, context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500' +
                                  trendingMovies.value[0]
                                      ['poster_path']))),
                ),
              ),
              Positioned(
                  bottom: mediaqueryHeight(0.08, context),
                  left: mediaqueryWidth(0.09, context),
                  child: stackContainer(
                      "▶ Play", whitecolor, blackColor, context)),
              Positioned(
                  bottom: mediaqueryHeight(0.08, context),
                  left: mediaqueryWidth(0.48, context),
                  child: stackContainer(
                      "✓ My List",
                      greyColor.withOpacity(0.4),
                      whitecolor,
                      context))
            ],
          );
        }
      },
    );
  }
}