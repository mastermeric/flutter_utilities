// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';

// class TensorFlowTEST extends StatefulWidget {
//   final List<CameraDescription> cameras;

//   TensorFlowTEST(this.cameras);

//   @override
//   _TensorFlowTESTState createState() => _TensorFlowTESTState();
// }

// loadMyModel() async {
//   var resultant = await Tflite.loadModel(
//       labels: "assets/labels.txt", model: "assets/model_unquant.tflite");
//   print("loadMyModel => " + resultant);
// }

// class _TensorFlowTESTState extends State<TensorFlowTEST> {
//   List<dynamic> _recognitions;
//   int _imageHeight;
//   int _imageWidth;
//   String _model;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _model == ""
//           ? Container()
//           : Stack(
//               children: [],
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(
//           Icons.photo_camera,
//         ),
//       ),
//     );
//   }
// }
