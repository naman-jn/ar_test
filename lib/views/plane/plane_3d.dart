import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Plane3d extends StatefulWidget {
  @override
  _Plane3dState createState() => _Plane3dState();
}

class _Plane3dState extends State<Plane3d> {
  Object jet;
  Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/jet/Jet.obj");
    jet.rotation.setValues(0, 90, 0);
    jet.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Jett"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(jet);
                  scene.camera.zoom = 10;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
