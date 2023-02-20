import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MyStringList.LifeExpectancyTitle",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget> [
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                )),
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                )),
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                )),
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                )),
                Expanded(child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                ))
              ],
            ))
          ],
        )
    );
  }
}