import 'package:flutter/material.dart';
import 'Quote.dart';

// ignore: must_be_immutable
class QutoCard extends StatelessWidget {
  Quote? quote ;
  VoidCallback? delete ;  // "VoidCallback" => "void Function()" ifadeleri ayni ifadedlir

  QutoCard(Quote quote, Function delete) {
    quote = quote;
    delete = delete;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15,15,15,0),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: prefer_const_constructors
            Text(quote!.text!, style: TextStyle(fontSize: 18, color: Colors.grey),),
            SizedBox(height: 5),
            Text(quote!.author!, style: TextStyle(fontSize: 14, color: Colors.amber),),
            SizedBox(height: 5),
            TextButton.icon(
              icon: Icon(Icons.delete),
              label: Text("Delete"),
              onPressed: delete,  // delete islemini parametre olarak bekliyoruz..
            )
          ],
        ),
      ) ,
    );
  }
}