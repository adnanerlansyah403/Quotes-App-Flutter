import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotes() 
));

class Quotes extends StatefulWidget {

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscard Wilde'),
    Quote(text: 'Be yourself; everyone else is already taken 2', author: 'Oscard Wilde'),
    Quote(text: 'Be yourself; everyone else is already taken 3.1', author: 'Oscard Wilde'),
  ];

  // Widget quoteTemplate(quote) {
  //   return new QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
