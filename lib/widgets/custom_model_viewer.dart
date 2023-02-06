import 'package:model_viewer/model_viewer.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/custom_app_bar.dart';

class CustomModelViewer extends StatelessWidget {
  final String modelPath;
  final String modelName;

  const CustomModelViewer({Key key, this.modelPath, this.modelName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 450,
                  padding: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ModelViewer(
                    src: modelPath,
                    alt:
                        "A 3D model of an ${modelPath.split("/").last.split(".").first}",
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "dataClita lorem takimata consetetur no no ipsum consetetur diam amet, lorem ipsum invidunt magna at consetetur sit amet, eos magna elitr aliquyam takimata. Tempor amet stet eirmod gubergren sanctus accusam erat duo, amet sit duo amet et kasd tempor duo invidunt lorem. Et eos est clita stet ea vero dolores clita. Et consetetur justo magna at amet tempor, sit magna et dolores voluptua ea, accusam clita rebum amet clita no et vero et, et ipsum justo accusam consetetur aliquyam no diam takimata. Voluptua clita sed dolore justo amet sit voluptua, consetetur sadipscing sea erat accusam elitr dolores et aliquyam dolor,.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black45,
                        Colors.black12.withOpacity(0.1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "View in Augmented Reality",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomAppBar(
            title: modelName,
            isBackEnabled: true,
          ),
        ],
      ),
    );
  }
}
