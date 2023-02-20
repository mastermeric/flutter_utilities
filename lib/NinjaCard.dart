import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 45;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      //=======  APPBAR   ======================================================
      appBar: AppBar(
        title: Text("Hoşgeldiniz.."),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      //========================================================================

      //========   BODY   ======================================================
      body: Padding(padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CircleAvatar(backgroundImage: AssetImage("assets/images/img1.jpg"),radius: 30,)),
            Divider(height: 40, color: Colors.amber),
            Text("Name",style: TextStyle(color: Colors.grey, letterSpacing: 2),),
            SizedBox(height: 10),
            Text("Chun Li",style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 2),),
            SizedBox(height: 10),
            Text("POINT",style: TextStyle(color: Colors.grey, letterSpacing: 2),),
            SizedBox(height: 10),
            Text( '$ninjaLevel' ,style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 2),),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email , color: Colors.grey),
                SizedBox(width: 10),
                Text("meric@gmail.com", style: TextStyle(color: Colors.grey))
              ],
            )
          ],
        ) ,
      ),
      //body: Row(children: <Widget> [Expanded(flex: 1,child: CircleAvatar(backgroundImage: AssetImage("assets/resim1.jpg"), radius:30,)),Expanded(flex: 3, child: Container( padding: EdgeInsets.all(30), color: Colors.purple, child: Text('22'),)),Expanded(flex: 3, child: Container( padding: EdgeInsets.all(30), color: Colors.redAccent, child: Text('33'),)),],),
      //body: Row(children: <Widget>[Expanded(flex: 4, child: Container(child: Text("1"), color: Colors.blue,)),Expanded(flex: 2, child: Container(child: Text("2"), color: Colors.red,)),Expanded(flex: 2,child: Container(child: Text("3"), color: Colors.amber,))],),
      //body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[FlatButton(child: Text("Click Me"),color: Colors.amber,onPressed: () {},),Container(child: Text("CONTAINER 1" ),color: Colors.amber,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),Container(child: Text("CONTAINER 2" ),color: Colors.amber,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10))],),
      //body: Container(color: Colors.amber,child: Text("DENEMELER BURADAAA.."),padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),),
      //body: Container(color: Colors.amber,child: Text("MERHABAAAA"),padding: EdgeInsets.all(25),),
      //body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[Text("aaaaa"),FlatButton( child: Text("DENEME"), color: Colors.amber, onPressed: () {},),Container(child: Text("container'ın içi"), color: Colors.grey, padding:EdgeInsets.all(20),)],),
      //body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[Container(child: Text("container-1"), color: Colors.green, padding:EdgeInsets.all(20),),Container(child: Text("container-1"), color: Colors.grey, padding:EdgeInsets.all(20),),Container(child: Text("container-1"), color: Colors.amber, padding:EdgeInsets.all(20),)],),
      //body: SimpleListView(),
      //========================================================================

      //========  FLOAT BUTTON  ================================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel+= 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      //========================================================================
    );
  }
}
