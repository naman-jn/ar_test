import 'package:model_viewer/model_viewer.dart';
import 'package:flutter/material.dart';
import 'package:project/views/ar_screens/arscreen1.dart';
import 'package:project/widgets/custom_app_bar.dart';

class CustomModelViewer extends StatelessWidget {
  final String modelPath;
  final String modelName;
  final String modelDescription;

  const CustomModelViewer(
      {Key key, this.modelPath, this.modelName, this.modelDescription})
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
                  height: 400,
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
                    modelDescription,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocalAndWebObjectsWidget(),
                    ),
                  ),
                  child: Container(
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
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
