import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';

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

ovals(String text) {
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

stackContainer(String text, Color color,Color textColor,context) {
  return Container(
    
    decoration: BoxDecoration(
      color: color,
    borderRadius: BorderRadius.circular(6)  
    ),
    height: mediaqueryHeight(0.04, context),
    width: mediaqueryWidth(0.33, context), 
    child:Center(child: mytext(text, 14,FontWeight.w600,textColor),) 
   
  );
}
