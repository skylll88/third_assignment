 import 'package:flutter/material.dart';

import '../model/tourist_model.dart';
class PlacesWidget extends StatelessWidget {
    PlacesWidget({Key? key, required this.places}) : super(key: key);
    TouristPlacesModel places;
   @override
   Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
       height: 200,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ClipRRect(
             borderRadius: const BorderRadius.all(
                 Radius.circular(10)
             ),
             child: Image(image:  NetworkImage(places.imageUrl),
               height: 120,
               width: MediaQuery.of(context).size.width / 2.3,
               fit: BoxFit.fitHeight,
             ),
           ),
           const SizedBox(height: 8,),
            Text(places.name, style: const TextStyle(
             color: Colors.white,
             fontSize: 18,
             fontWeight: FontWeight.w800,
           ),
           ),
         ],
       ),
     );
   }
 }
