import 'package:flutter/material.dart';
class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: const Color.fromRGBO(
          221, 222, 225, 1.0)),
          color: Colors.white
      ),
      child: Stack(
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomRight: Radius.zero,
              bottomLeft: Radius.zero,
            ),
            child: Image(image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-m/1280/1c/bb/e6/6c/legend-inn.jpg'),
              height: 120,
              width: 110,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 90,
            child: SizedBox(
              width: 110,
              child: Center(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: FloatingActionButton(onPressed: () {  },
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.add,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 155,
            left: 20,
            right: 20,
            child: Text(
              'Create Story',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
