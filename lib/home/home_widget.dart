import 'package:flutter/material.dart';
import 'package:third_assignment/home/popular_list/popular_list.dart';
import 'package:third_assignment/home/search_widget.dart';
import 'package:third_assignment/home/storyWidget/story_widget.dart';
import 'package:third_assignment/home/tourist_places/famous_places_list.dart';
import 'header_widget.dart';
import 'category_list/category_list.dart';
import 'hotel_list/hotel_list.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 241, 245, 1.0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const HeaderWidget(),
            HorizontalScrollWidget(),
            const SearchWidget(),
            const SizedBox(height: 16),
            const StoryWidget(),
            const PopularList(),
            const SizedBox(height: 16),
            const Divider(
              height: 2,
              color: Colors.grey,
              thickness: 2.0
            ),
            const SizedBox(height: 2),
            const FamousPlacesList(),
            const HotelList(),
          ],
        ),
      ),
    );
  }
}
