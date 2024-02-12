

import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';

class SearchListTileDisplay extends StatelessWidget {
  const SearchListTileDisplay({
    super.key,
    required this.urls,
    required this.title,
  });

  final String urls;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(10),
          child: SizedBox(
              width: mediaqueryWidth(
                  0.25, context),
              height: mediaqueryHeight(
                  0.073, context),
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(urls))),
        ),
        SizedBox(
          width: mediaqueryWidth(0.02, context),
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 16),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.play_circle_fill)
      ],
    );
  }
}