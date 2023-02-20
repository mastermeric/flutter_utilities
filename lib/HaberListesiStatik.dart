import 'package:flutter/material.dart';

class HaberListesiStatik extends StatefulWidget {
  @override
  _HaberListesiStatikState createState() => _HaberListesiStatikState();
}

class _HaberListesiStatikState extends State<HaberListesiStatik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Haber Listesi - Statik"),),
      body: ListView.builder(itemBuilder: (context,index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Title :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("Content here..Content here..Content here..Content here..Content here..Content here..Content here..Content here.."),
              ],
            ),
          ),
        );
      },
      itemCount: 50,
      ),
    );
  }
}
