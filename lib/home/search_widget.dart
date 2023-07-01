import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextField(
        keyboardType: TextInputType.text,
        maxLines: 1,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search City',
        ),
      ),
    );
  }
}
