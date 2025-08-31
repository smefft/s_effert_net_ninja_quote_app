import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote? quote;
  const QuoteCard({this.quote});

  Color getCardColor() {
    switch (quote!.category) {
      case "Confidence":
        return const Color.fromARGB(255, 188, 220, 248);
      case "Philosophical":
        return Colors.indigo[100]!;
      default:
        return Colors.grey[50]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        color: getCardColor(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote!.text ?? "None",
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              quote!.author ?? "None",
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Chip(label: Text(quote!.category))],
            ),
          ],
        ),
      ),
    );
  }
}
