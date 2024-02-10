
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/News%20And%20Hot/functions/date_convertion.dart';
import 'package:netflix_clone/value_notifiers.dart';

class TitleAndOverview extends StatelessWidget {
  int index;
   TitleAndOverview({
  required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        sizedBoxWidth(mediaqueryWidth(0.11, context)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mytext(upcomingMovies.value[index]['title'],
                  12),
              Text(
                upcomingMovies.value[index]['overview'],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: greyColor,
                    fontSize: 12),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        sizedBoxWidth(mediaqueryWidth(0.05, context)),
      ],
    );
  }
}

class ImageForNews extends StatelessWidget {
   int index;
   ImageForNews({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: mediaqueryWidth(0.83, context),
        child: Image(
            height: mediaqueryHeight(0.2, context),
            fit: BoxFit.cover,alignment: Alignment.topCenter,
            image: NetworkImage(imageUrl +
                upcomingMovies.value[index]
                    ['backdrop_path'])),
      ),
    );
  }
}

class ReleaseDate extends StatelessWidget {
   int index;
   ReleaseDate({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mytext(month[index], 12,FontWeight.w600),
        mytext(dates[index], 24,FontWeight.w900)
      ],
    );
  }
}