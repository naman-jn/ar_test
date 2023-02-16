import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            isDense: true,
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
