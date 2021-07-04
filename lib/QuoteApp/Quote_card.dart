import 'package:flutter/material.dart';
import '../QuoteApp/data.dart';

class QuotesCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuotesCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Text(quote.text),
            SizedBox(
              height: 10,
            ),
            Text(quote.author),
            SizedBox(
              height: 10,
            ),
            IconButton(
                onPressed: () {
                  delete(quote);
                },
                icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
