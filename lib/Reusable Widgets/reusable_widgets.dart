import 'package:flutter/material.dart';

Color blackColor = Colors.black;
Color whitecolor = Colors.white;
Color greyColor = Colors.grey;

mytext(String text, double size,
    [FontWeight fontWeight = FontWeight.normal, Color color = Colors.white]) {
  return Text(
    text,
    style: TextStyle(fontWeight: fontWeight, color: color, fontSize: size),
  );
}

mediaqueryHeight(double size, BuildContext context) {
  return MediaQuery.of(context).size.height * size;
}

mediaqueryWidth(double size, BuildContext context) {
  return MediaQuery.of(context).size.width * size;
}

//home screen wiget function


sizedBoxHeight(double height) {
  return SizedBox(
    height: height,
  );
}

sizedBoxWidth(double width) {
  return SizedBox(
    width: width,
  );
}
