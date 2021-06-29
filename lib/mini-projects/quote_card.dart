import 'package:flutter/material.dart';
//create a quote class

class Quote {
  String text;
  String author;
  Quote({this.text = "", this.author = ""});
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard(this.quote, this.delete);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(quote.text),
            SizedBox(
              height: 10,
            ),
            Text(quote.author),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  delete(quote);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                icon: Icon(Icons.delete),
                label: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
