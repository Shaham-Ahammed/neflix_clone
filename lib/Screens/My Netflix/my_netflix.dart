import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/my%20netflix/Widgets/images_and_headers.dart';
import 'package:netflix_clone/Screens/my%20netflix/Widgets/listtiles.dart';
import 'package:netflix_clone/Screens/my%20netflix/Widgets/profile_pic.dart';


class MyNetflix extends StatelessWidget {
  const MyNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(mediaqueryHeight(0.01, context)),
              const ProfileImage(),
              Center(
                child: mytext("Shaham", 18, FontWeight.w400),
              ),
              sizedBoxHeight(mediaqueryHeight(0.03, context)),
              listTile(Icons.notifications, Colors.red, "Notifications"),
              listTile(Icons.download, Colors.blue.shade900, "Downloads"),
              sizedBoxHeight(mediaqueryHeight(0.02, context)),
              const TvShowsText(),
                sizedBoxHeight(mediaqueryHeight(0.015, context)),
              const TvShowsImage(),
              sizedBoxHeight(mediaqueryHeight(0.03, context)),
              const TrailersText(),
              sizedBoxHeight(mediaqueryHeight(0.015, context)),
              const TrailersImage(),
               sizedBoxHeight(mediaqueryHeight(0.03, context)),
                const TopRatedText(),
                sizedBoxHeight(mediaqueryHeight(0.015, context)),
              const TopRatedImage(),
              sizedBoxHeight(mediaqueryHeight(0.015, context)),
            ],
          ),
        ));
  }
}




