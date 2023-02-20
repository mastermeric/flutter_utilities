import 'package:flutter/material.dart';

class DinamiGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Dinamik Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(30, (index) {
            return Center(
              child: Text(
                'item: $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}