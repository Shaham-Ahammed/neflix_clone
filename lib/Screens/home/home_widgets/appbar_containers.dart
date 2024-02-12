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

ovals(String text,context) {
  return InkWell(
    borderRadius: BorderRadius.circular(80),
    onTap: () {
     
    },
    child: Ink(
      decoration: BoxDecoration(
        border: Border.all(color: whitecolor),
        borderRadius: BorderRadius.circular(80),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: mytext(text, 13, FontWeight.bold),
    ),
  );
}

stackContainer(String text, Color color, Color textColor, context) {
  return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      height: mediaqueryHeight(0.04, context),
      width: mediaqueryWidth(0.33, context),
      child: Center(
        child: mytext(text, 14, FontWeight.w600, textColor),
      ));
}
