import 'package:flutter/material.dart';

import 'hotel_widget.dart';
class HotelList extends StatelessWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      height: 270,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Hotels', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              GestureDetector(
                onTap: (){
                  print("See All tapped");
                },
                child: const Text('See All',
                  style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueAccent),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: SizedBox(
              width: width,
              child: ListView.builder(
                itemCount: 20,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => const HotelWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
