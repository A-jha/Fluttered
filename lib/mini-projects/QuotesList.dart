import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(
        text:
            "Life isn’t about getting and having, it’s about giving and being.",
        author: "Avinash"),
    Quote(text: "If you can dream it, you can achieve it.", author: "Sam"),
    Quote(
        text: "The only way to do great work is to love what you do.",
        author: "arpita")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) {
          return Card(
            child: Column(
              children: [Text(quote.text), Text(quote.author)],
            ),
          );
        }).toList(),
      ),
    );
  }
}

//create a quote class

class Quote {
  String text;
  String author;
  Quote({this.text = "", this.author = ""});
}
