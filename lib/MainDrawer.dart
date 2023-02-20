import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/img_profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Meriç YILMAZ",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "mastermeric@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),

        //============   Drawer Menu Items   =================================
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Home",
              style: TextStyle(fontSize: 18, color: Colors.black54)),
          onTap: () {
            Navigator.of(context).pushNamed("/Home");
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("NinjaCard",style: TextStyle(fontSize: 18, color: Colors.black54)),
          onTap: () {
            Navigator.of(context).pushNamed("/NinjaCard");
          },
        ),
        ListTile(
          leading: Icon(Icons.login),
          title: Text("LoginScreen",
              style: TextStyle(fontSize: 18, color: Colors.black54)),
          onTap: () {
            Navigator.of(context).pushNamed("/LoginScreen");
          },
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text("TensorFlowTEST",
              style: TextStyle(fontSize: 18, color: Colors.black54)),
          onTap: () {
            Navigator.of(context).pushNamed("/TensorFlowTEST");
          },
        ),
        //ListTile(leading: Icon(Icons.arrow_back),title: Text("HaberListesi",style: TextStyle(fontSize: 18, color: Colors.black54)),onTap: () {Navigator.of(context).pushNamed("/HaberListesi");},),
        //====================================================================
      ],
    ));
  }
}
