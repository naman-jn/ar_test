import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            prefixIcon: Container(
              padding: EdgeInsets.all(15),
              child: Icon(Icons.search),
              width: 18,
            )),
      ),
    );
  }
}
