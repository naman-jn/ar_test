import 'package:flutter/material.dart';
import 'package:project/views/homepage.dart';

class ChaptersListScreen extends StatelessWidget {
  const ChaptersListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  title: Text("Asemble a PC"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
