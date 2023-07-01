import 'package:flutter/material.dart';
import 'package:third_assignment/home/popular_list/popular_widget.dart';

import '../model/popular_places_model.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(popularPlaces.headerTitle,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
         const SizedBox(height: 16),
        SizedBox(
          height:380,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10, mainAxisExtent: MediaQuery.of(context).size.width - 20,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: popularPlaces.places.length,
            itemBuilder: (BuildContext context, int index) => PopularWidget(
              places: popularPlaces.places[index],
              index: '${index + 1}',
            ),
            ),
          ),
        ],
      ),
    );
  }
}
