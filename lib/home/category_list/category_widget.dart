import 'package:flutter/material.dart';
import 'package:third_assignment/home/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key, required this.categoryData}) : super(key: key);
   CategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(categoryData.type);
      },
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              foregroundImage: NetworkImage(categoryData.imageUrl),
            ),
            const SizedBox(height: 8),
            Text(categoryData.type, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
