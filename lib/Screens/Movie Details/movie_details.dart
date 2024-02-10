// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

class MovieDetailsPage extends StatelessWidget {
  ValueNotifier valueNotifier;
  int index;
  MovieDetailsPage(
      {required this.valueNotifier, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
          backgroundColor: blackColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: whitecolor,
          ),
          actions: [
            Icon(
              Icons.search,
              color: whitecolor,
            ),
            SizedBox(
              width: mediaqueryHeight(0.02, context),
            )
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: mediaqueryHeight(0.35, context),
              child: Image(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  image: NetworkImage(
                      imageUrl + valueNotifier.value[index]['poster_path'])),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mytext(
                    valueNotifier.value[index]["title"] ?? valueNotifier.value[index]["name"],
                    28,
                    FontWeight.w700,
                  ),
                  sizedBoxHeight(mediaqueryHeight(0.015, context)),
                  containers(Colors.black, Colors.white70, "Play", context,
                      Icons.play_arrow),
                  sizedBoxHeight(mediaqueryHeight(0.01, context)),
                  containers(
                      const Color.fromARGB(209, 255, 255, 255),
                      Colors.white30,
                      "Download",
                      context,
                      Icons.file_download_outlined),
                  sizedBoxHeight(mediaqueryHeight(0.03, context)),
                  mytext(
                      valueNotifier.value[index]['overview'] ,
                      14,
                      FontWeight.normal,
                      const Color.fromARGB(226, 255, 255, 255)),
                  sizedBoxHeight(mediaqueryHeight(0.03, context)),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.add,
                            size: 24,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.thumb_up_sharp,
                            size: 22,
                            color: whitecolor,
                          ),
                          Icon(
                            Icons.share,
                            color: whitecolor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mytext("My List", 12, FontWeight.normal, greyColor),
                          mytext("Rate   ", 12, FontWeight.normal, greyColor),
                          mytext("Share", 12, FontWeight.normal, greyColor)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            sizedBoxHeight(mediaqueryHeight(0.02, context)),
            Center(
                child: Container(
              width: mediaqueryWidth(0.2, context),
              height: 5,
              color: Colors.red,
            )),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.white24,
            )
          ],
        ),
      )),
    );
  }
}

containers(Color textColor, Color containerColor, String text, context,
    IconData icon) {
  return Container(
    width: double.infinity,
    height: mediaqueryHeight(0.07, context),
    decoration: BoxDecoration(
        color: containerColor, borderRadius: BorderRadius.circular(4)),
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: textColor,
        ),
        sizedBoxWidth(10),
        mytext(text, 16, FontWeight.w600, textColor),
      ],
    )),
  );
}
