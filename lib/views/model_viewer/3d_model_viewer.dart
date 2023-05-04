import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';
import 'package:project/widgets/custom_app_bar.dart';

class ThreeDModelViewer extends StatelessWidget {
  const ThreeDModelViewer({Key key, @required this.modelPath})
      : super(key: key);
  final String modelPath;

  @override
  Widget build(BuildContext context) {
    String modelName = modelPath.split("/").last.split(".").first;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(
            isBackEnabled: true,
            title: "3D Model of $modelName",
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: ModelViewer(
                src: modelPath,
                alt: "A 3D model of an $modelName",
                autoRotate: true,
                cameraControls: true,
              ),
            ),
          )
        ],
      )),
    );
  }
}
