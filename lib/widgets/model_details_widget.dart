import 'package:flutter/material.dart';
import 'package:project/views/model_viewer/3d_model_viewer.dart';
import 'package:project/views/model_viewer/ar_test_screen.dart';
import 'package:project/widgets/custom_button.dart';

class ModelDetailsWidget extends StatelessWidget {
  final String modelPath;
  final String modelName;
  final String modelDescription;
  final String modelAr;

  const ModelDetailsWidget(
      {Key key,
      this.modelPath,
      this.modelName,
      this.modelDescription,
      this.modelAr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                modelName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                modelDescription,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThreeDModelViewer(modelPath: modelPath),
                ),
              ),
              modelAr: modelAr,
              buttonText: "View in 3-D",
            ),
            CustomButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArTestScreen(arModel: modelAr),
                ),
              ),
              modelAr: modelAr,
              buttonText: "View in Augmented Reality",
            )
          ],
        ),
      ),
    );
  }
}
