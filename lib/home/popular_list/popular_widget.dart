import 'package:flutter/material.dart';
import 'package:third_assignment/home/model/popular_places_model.dart';
class PopularWidget extends StatelessWidget {
   PopularWidget({Key? key, required this.places, required this.index}) : super(key: key);
PlacesModel places;
String index;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image(image: NetworkImage(places.imageUrl),
              height: 100,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 16),
            Text(index,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,color: Colors.grey),
            ),
            const SizedBox(width: 16),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(places.title,
                    maxLines: 2,
                    softWrap: true,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,color: Colors.black),
                  ),
                  Text(places.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,color: Colors.grey),
                  ),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
