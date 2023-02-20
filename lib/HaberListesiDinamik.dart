import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert' as convert;
import 'Country.dart';
import 'Haber.dart';
import "package:http/http.dart" as http;

class HaberListesiDinamik extends StatefulWidget {
  @override
  _HaberListesiDinamikState createState() => _HaberListesiDinamikState();
}

class _HaberListesiDinamikState extends State<HaberListesiDinamik> {
  var _yeniHaberler = [];
  var tagObjs;

  Future<List> fetchNotes() async {
    try {
      // WEB de noku ...
      // var response =
      //     await http.get("https://jsonplaceholder.typicode.com/todos/");
      // if (response.statusCode == 200) {
      //   var jsonResponse = convert.jsonDecode(response.body);
      //   List tagObjs = jsonResponse.map((tagJson) => new Haber.fromJson(tagJson)).toList();

      //Lokal JSON dosyadan oku...
      var jsonText = await rootBundle.loadString('assets/images/Country.json');
      var jsonResponse = convert.jsonDecode(jsonText);
      tagObjs = jsonResponse.map((i) => Country.fromJson(i)).toList();

    } catch (exception) {
      if (kDebugMode) {
        print("ERROR at exception : " + exception.toString());
      }
    }

    return tagObjs;
  }

  @override
  void initState() {
    super.initState();
    fetchNotes().then((value) {
      setState(() {
        _yeniHaberler.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haber Listesi - Dinamik"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _yeniHaberler[index].ulke, //_yeniHaberler[index].id,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Ortalama Ömür :" +
                      _yeniHaberler[index]
                          .ortalama), //Text(_yeniHaberler[index].title),
                ],
              ),
            ),
          );
        },
        itemCount: _yeniHaberler.length,
      ),
    );
  }
}
