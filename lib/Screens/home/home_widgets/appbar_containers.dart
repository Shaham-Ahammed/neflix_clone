import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

Row appBarContainers(BuildContext context) {
    return Row(children: [
                SizedBox(
                  width: mediaqueryWidth(0.03, context),
                ),
                ovals("TV Shows",context),
                SizedBox(
                  width: mediaqueryWidth(0.02, context),
                ),
                ovals("Movies",context),
                SizedBox(
                  width: mediaqueryWidth(0.02, context),
                ),
                ovals("Categories ▼",context)
              ]);
  }
