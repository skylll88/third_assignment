import 'package:flutter/material.dart';
import 'package:third_assignment/home/model/stories_model.dart';
import 'package:third_assignment/home/storyWidget/story_list_widget.dart';

import 'create_story_widget.dart';
class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: storiesModel.length + 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
        return index == 0 ? const CreateStoryWidget() : StoryListWidget(stories: storiesModel[index - 1],);
      }),
    );
  }
}
