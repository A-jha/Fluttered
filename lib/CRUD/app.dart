import 'package:flut_1/CRUD/data.dart';
import 'package:flutter/material.dart';
import '../CRUD/Quote_card.dart';
import '../CRUD/data.dart';

class MyFavQuotes extends StatefulWidget {
  @override
  _MyFavQuotesState createState() => _MyFavQuotesState();
}

class _MyFavQuotesState extends State<MyFavQuotes> {
  void delete(quote) {
    setState(() {
      data.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: data
            .map(
              (quote) => QuotesCard(quote, delete),
            )
            .toList(),
      ),
    );
  }
}
