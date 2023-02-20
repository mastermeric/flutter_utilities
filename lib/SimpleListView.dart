import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Statik List View';
    final List<String> entries = <String>['A', 'B', 'C','D'];
    final List<int> colorCodes = <int>[600, 500, 100,50];

    return MaterialApp(
      title: title,
      home: Scaffold(
        //appBar: AppBar(title: Text(title),),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        )),
      );
}
}