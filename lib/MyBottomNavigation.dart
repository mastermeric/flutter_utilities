import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "camera",
            backgroundColor: Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "person",
            backgroundColor: Colors.orange),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone),                        
            label:"phone",
            backgroundColor: Colors.orange),
        BottomNavigationBarItem(
            icon: Icon(Icons.apple),                        
            label:"apple",
            backgroundColor: Colors.orange),
      ],
      onTap: (value) {
        setState(() {
          _currentIndex = value;

          switch (_currentIndex) {
            case 0:
              Navigator.pushNamed(context, "/Home");
              break;
            case 1:
              Navigator.pushNamed(context, "/CustomDateTimePicker");
              break;
            case 2:
              Navigator.pushNamed(context, "/LoginPage");
              break;
            case 3:
              Navigator.pushNamed(context, "/HaberListesiDinamik");
              break;
            case 4:
              Navigator.pushNamed(context, "/AlertDialogPage");
              break;
            case 5:
              Navigator.pushNamed(context, "/modal_progress_hud_nsn");
              break;
          }

/*        Text("Home",style: TextStyle(fontSize: 18, color: Colors.black54)),onTap: () {Navigator.of(context).pushNamed("/Home");},),
          Text("NinjaCard",style: TextStyle(fontSize: 18, color: Colors.black54)),onTap: () {Navigator.of(context).pushNamed("/NinjaCard");},),
          Text("LoginScreen",style: TextStyle(fontSize: 18, color: Colors.black54)),onTap: () {Navigator.of(context).pushNamed("/LoginScreen");},),
          Text("AlertDialogPage",style: TextStyle(fontSize: 18, color: Colors.black54)),onTap: () {Navigator.of(context).pushNamed("/AlertDialogPage");},),*/
        });
      },
    );
  }
}
