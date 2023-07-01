import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class HotelWidget extends StatelessWidget {
  const HotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthFrame = MediaQuery.of(context).size.width / 1.4 ;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: widthFrame,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: Image(image: const NetworkImage('https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=612x612&w=0&k=20&c=cODMSPbYyrn1FHake1xYz9M8r15iOfGz9Aosy9Db7mI='),
                width: widthFrame,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: ImageIcon(
            AssetImage('assets/icons/heart.png'),
            size: 30,
              color: Colors.white,
          ),
          ),
          Positioned(
            top: 130,
              width: widthFrame,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Polonia palace hotel',
                      style:TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                    const Text('Wola, Warsaw',
                        style:TextStyle(fontWeight: FontWeight.normal, fontSize: 12)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.blueAccent,
                                  ),
                                  itemCount: 5,
                                  itemSize: 15.0,
                                  direction: Axis.horizontal,
                                ),
                                const Text(' 4.1 (288)',
                                    style:TextStyle(fontWeight: FontWeight.normal, fontSize: 12)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: widthFrame/1.6,
                              child: const Text('1.5 kilometers away',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: false,
                                  style:TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.grey)
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(242, 242, 245,1.0)
                            ),
                            child: const Center(
                              child: Text("\$25 night",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
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
