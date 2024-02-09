import 'package:flutter/material.dart';
import 'package:netflix_clone/Api%20Functions/api_functions.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

class NewsAndHotAppbarContainers extends StatelessWidget {
  const NewsAndHotAppbarContainers({
    super.key,
    required this.listviewNames,
  });

  final List<String> listviewNames;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaqueryHeight(0.05, context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: InkWell(
              onTap: () async{
                loadupcomingMovies();
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: whitecolor),
                    borderRadius: BorderRadius.circular(90)),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: Center(
                      child: mytext(listviewNames[index], 11, FontWeight.w600),
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
