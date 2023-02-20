import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuotoCard.dart';

class CycleStaticList extends StatefulWidget {
  @override
  _CycleStaticListState createState() => _CycleStaticListState();
}

class _CycleStaticListState extends State<CycleStaticList> {
  List<Quote> quotes = [
    Quote(author: "Rumi", text: "gel kim olursan ol gel"),
    Quote(author: "Hiporates", text: "primum non no cera"),
    Quote(
        author: "Mark Twain",
        text: "of all the things i lost, i miss my mind the most")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("QuoteList Data !"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //children: quotes.map((quote) =>Text('${quote.text} - ${quote.author}')).toList(),
        children: quotes
            .map((quote) => new QutoCard(
                quote, // 1. parametre : quto
                () => {
                      setState(() {
                        quotes.remove(quote);
                      })
                    } // 2. parametre : quto silme fonksiyonu gonderiyoruz..
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Alert"),
        onPressed: () {},
      ),
    );
  }
}
