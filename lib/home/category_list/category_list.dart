import 'package:flutter/material.dart';
import 'package:third_assignment/home/category_list/category_widget.dart';
import '../model/category_model.dart';

class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 110,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: categoryModel.length,
      itemBuilder:(BuildContext context, int index) {
        return CategoryWidget(categoryData: categoryModel[index]);
      },
      ),
    );
  }
}


