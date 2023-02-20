import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'AlertDialogPage.dart';
import 'HaberListesiDinamik.dart';
import 'HaberListesiStatik.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'NinjaCard.dart';
//import 'TensorFlowTEST.dart';
import 'CustomDateTimePicker.dart';

List<CameraDescription>? cameras;

Future<List<CameraDescription>> kameraYukle() async {
  try {
    cameras = await availableCameras();
  } catch (e) {
    if(kDebugMode) {
      print("kameraYukle ERROR => " + e.toString());
    }
    throw Exception('kameraYukle ERROR => ' + e.toString());
  }
  return cameras!;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var kameraListesi = await kameraYukle();

  runApp(new MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(), // base root. home: yerine gecer. diger sayfalarda "<--" isareti buna gore cikar
      '/Home': (context) => HomePage(),
      '/NinjaCard': (context) => NinjaCard(),
      '/AlertDialogPage': (context) => AlertDialogPage(),
      '/HaberListesiStatik': (context) => HaberListesiStatik(),
      '/HaberListesiDinamik': (context) => HaberListesiDinamik(),
      '/LoginPage': (context) => LoginPage(),
      //'/TensorFlowTEST': (context) => TensorFlowTEST(kameraListesi),
      '/CustomDateTimePicker': (context) => CustomDateTimePicker(),
    },
    //home: HomePage()
    //home: AlertDialogPage(),
    //home : CycleStaticList(),
    //home : SimpleGrid(),
    //home:NinjaCard(),
    //home:LoginPage(),
  ));
}
