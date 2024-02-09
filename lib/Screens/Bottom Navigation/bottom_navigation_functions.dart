 import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

buildTitleWidget(int currentPage) {
    switch (currentPage) {
      case 0:
        return;
      case 1:
        return mytext("News & Hot", 18,FontWeight.bold);
      case 2:
        return mytext("My Netflix", 18,FontWeight.bold);
      default:
    }
  }

  buildLeadingWidget(int currentPage) {
    switch (currentPage) {
      case 0:
        return Transform.scale(
          scale: 0.5,
          child: Image.asset("assets/netflix_logo0.png"),
        );

      case 1:
        break;
      case 2:
        break;
    }
  }

  buildTrailingWidget(int currentPage,context) {
    switch (currentPage) {
      case 2:
        return [
          Icon(
            Icons.cast,
            size: 20,
            color: whitecolor,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
          Icon(Icons.search, color: whitecolor),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
        ];

      default:
        return [
          Icon(
            Icons.cast,
            size: 20,
            color: whitecolor,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
          Icon(Icons.search, color: whitecolor),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
        ];
    }
  }