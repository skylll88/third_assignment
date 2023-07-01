import 'package:flutter/material.dart';

import '../model/stories_model.dart';
class StoryListWidget extends StatelessWidget {
  StoryListWidget({Key? key, required this.stories}) : super(key: key);
 StoriesModel stories ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: const Color.fromRGBO(
              221, 222, 225, 1.0)),
          color: Colors.white
      ),
      child:  Stack(
        children: [
           ClipRRect(
          borderRadius: const BorderRadius.all(
              Radius.circular(8)
          ),
          child: Image(image: NetworkImage(stories.profileImageUrl),
            height: 230,
            width: 110,
            fit: BoxFit.fill,
          ),
        ),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              padding: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              foregroundImage:NetworkImage(stories.reelUrl),

   ),
            ),
          ),
    ],
      ),
    );
  }
}
