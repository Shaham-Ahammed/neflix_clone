import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

AppBar homePageAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: blackColor,
      leading: Transform.scale(
        scale: 0.5,
        child: Image.asset("assets/netflix_logo0.png"),
      ),
      actions: [
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
      ],
    );
  }