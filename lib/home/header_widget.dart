import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.fromLTRB(16, AppBar().preferredSize.height, 16, 16),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Explore', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Stack(
              children: [
                IconButton(onPressed: (){}, icon:
                const ImageIcon(
                  AssetImage('assets/icons/notification.png'),
                ),
                ),
                const Positioned(
                  top: 15,
                  right: 15,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.blue,
                  ), //CircularAvatar
                ),
              ],
            ),
          ],
        ),
      );
  }
}
