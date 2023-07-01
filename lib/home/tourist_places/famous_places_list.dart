import 'package:flutter/material.dart';
import 'package:third_assignment/home/tourist_places/places_widget.dart';

import '../model/tourist_model.dart';
class FamousPlacesList extends StatelessWidget {
  const FamousPlacesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: NetworkImage(touristModel.cityImageUrl),
          fit: BoxFit.fill,
          ),
          Positioned(
            top: 250,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(touristModel.title, style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                     ),
                    const SizedBox(height: 10,),
                     Text(touristModel.subtitle, style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: touristModel.touristPlaces.length,
                          shrinkWrap: false,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>  PlacesWidget(places: touristModel.touristPlaces[index],),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
