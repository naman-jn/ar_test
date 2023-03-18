import 'package:flutter/material.dart';
import 'package:project/shared/constants.dart';
import 'package:project/widgets/custom_model_viewer.dart';

class HomePageCard extends StatelessWidget {
  final int index;
  const HomePageCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, _) {
              return CustomModelViewer(
                modelPath: Constants.modelList[index],
                modelName: Constants.nameList[index],
                modelDescription: Constants.modelDescriptionList[index],
                modelAr: Constants.arModels[index],
              );
            },
            opaque: false));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.asset(
              Constants.ImageList[index],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black38, Colors.black12.withOpacity(0.005)],
              ),
            ),
            child: Text(
              Constants.nameList[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
