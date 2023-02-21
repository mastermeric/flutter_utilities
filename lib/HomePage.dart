import 'package:flutter/material.dart';
import 'MyBottomNavigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("MERHABA..")),

      //=========  Drawer  =============
      //drawer: MainDrawer(),
      //================================

      //=========  BottomNavigation  ===
      bottomNavigationBar: MyBottomNavigation(),
      //================================

      //=========  BODY  =============
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg_main.jpg"), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
