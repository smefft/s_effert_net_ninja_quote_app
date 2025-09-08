import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'color_palette.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Oscar Wilde',
      text: 'Be yourself; everyone else is already taken',
      category: 'Confidence',
    ),
    Quote(
      author: 'Oscar Wilde',
      text: 'I have nothing to declare except my genius',
    ),
    Quote(
      author: 'Oscar Wilde',
      text: 'The truth is rarely pure and never simple',
      category: 'Philosophical',
    ),
    Quote(
      author: 'Joan Didion',
      text:
          "I write entirely to find out what I'm thinking, what I'm looking at, "
          "what I see and what it means. What I want and what I fear.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dogwood(null),
      appBar: AppBar(
        title: Text('Awesome Quotes', style: TextStyle(color: licorice())),
        centerTitle: true,
        backgroundColor: dogwood('light'),
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
