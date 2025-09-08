import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'quote.dart';
import 'color_palette.dart';

class QuoteCard extends StatefulWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  Color getCardColor() {
    switch (widget.quote!.category) {
      case "Confidence":
        return mint();
      case "Philosophical":
        return eggplant();
      default:
        return dogwood('ultralight');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: getCardColor(),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.quote.text ?? "None",
              style: TextStyle(fontSize: 18.0, color: licorice()),
            ),
            SizedBox(height: 6.0),
            Text(
              widget.quote.author ?? "None",
              style: TextStyle(fontSize: 14.0, color: licorice()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.quote.likes += 1;
                        });
                      },
                      icon: Icon(
                        Icons.thumb_up,
                        color: Color.fromARGB(255, 98, 70, 80),
                      ),
                    ),
                    Text('${widget.quote.likes}'),
                  ],
                ),
                Chip(label: Text(widget.quote.category)),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: AlertDialog(
                            title: Text('Delete'),
                            content: Text(
                              'Area you sure you want to delete this quote?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('CANCEL'),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(widget.delete);
                                  Navigator.of(context).pop();
                                },
                                child: Text('Delete'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
