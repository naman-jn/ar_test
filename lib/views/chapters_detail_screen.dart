import 'package:flutter/material.dart';
import 'package:project/shared/constants.dart';
import 'package:project/widgets/model_details_widget.dart';

class ChaptersDetailScreen extends StatelessWidget {
  const ChaptersDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: Constants.modelList.length,
              itemBuilder: ((context, index) {
                return Container(
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ModelDetailsWidget(
                      modelPath: Constants.modelList[index],
                      modelName: Constants.nameList[index],
                      modelDescription: Constants.modelDescriptionList[index],
                      modelAr: Constants.arModels[index],
                    ));
              }),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        leading: SizedBox(),
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Chapter 1: Assemble a PC",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ));
  }
}
