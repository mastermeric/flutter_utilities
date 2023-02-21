import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_utilities/MyFlatButtonStyle.dart';

  Future<void> _showSimpleDialog(BuildContext _context) {
    return showDialog(
        context: _context,
        builder: (BuildContext _context) {
          return AlertDialog(
            title: Text("Make a Choice"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      Navigator.of(_context).pop();
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("Kamera"),
                    onTap: () {
                      Navigator.of(_context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

    // final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    //   primary: Colors.white,
    //   minimumSize: Size(88, 44),
    //   padding: EdgeInsets.symmetric(horizontal: 16.0),
    //   shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(2.0)),
    //   ),
    //   backgroundColor: Colors.blue,
    // );

  Future<void> _showDialogBlurry(BuildContext context)
  {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child:  AlertDialog(
          title: new Text("Abort",style: TextStyle (color: Colors.black),),
          content: new Text("Are you sure you want to abort this operation?", style: TextStyle (color: Colors.black),),
          actions: <Widget>[

            new TextButton(
              style: myFlatButtonStyle,
              child: new Text("Continue"),
              onPressed: () {
                //continueCallBack();
                Navigator.of(context).pop();
              },
            ),

            new TextButton(
              style:myFlatButtonStyle,
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
    );
      },
    );
}


class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoşgeldiniz.."),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              FloatingActionButton(
                heroTag: "myTag1",
                child: Text("Blurry Alert"),
                onPressed: () {
                _showDialogBlurry(context);
              },
            ),
            SizedBox(width:50),
            FloatingActionButton(
              heroTag: "myTag2",
              child: Text("Simple Alert"),
              onPressed: () {
                _showSimpleDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
