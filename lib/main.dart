import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_template.dart';

void main() => runApp(MaterialApp(
  home : Home(),
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text: 'You only live once, but if you do it right, once is enough' , author : '- Mae West'),
    Quote(text: 'Be yourself; everyone else is already taken' , author : '- Oscar Wilde'),
    Quote(text: 'So many books, so little time' , author : '- Frank Zappa'),
    Quote(text: 'A room without books is like a body without a soul' , author : '- Marcus Tullius Cicero'),
    Quote(text: 'Stay Hungry, Stay foolish' , author : '- Steve Jobs'),
    Quote(text: 'Be the change that you wish to see in the world' , author : '- Mahatma Gandhi'),
    Quote(text : 'If you tell the truth, you don\'t have to remember anything' , author : '- Mark Twain'),
    Quote(text : 'A friend is someone who knows all about you and still loves you' , author : '- Elbert Hubbard'),
    Quote(text : 'Always forgive your enemies; nothing annoys them so much' , author : '- Oscar Wilde'),
    Quote(text : 'We accept the love we think we deserve' , author : '- Stephen Chbosky'),
    Quote(text : 'Go beyond your limits' , author : '- Rohit Bakolya')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body : SingleChildScrollView(
        child: Column(
          children:  quotes.map((quote)=> QuoteTemplate(
              quote : quote,
              delete : ()=> setState(()=> quotes.remove(quote)) ,
          ) ).toList(),
        ),
      )
    );
  }
}