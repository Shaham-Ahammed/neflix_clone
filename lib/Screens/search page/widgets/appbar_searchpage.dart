
  import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: blackColor,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back)),
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
    );
  }
