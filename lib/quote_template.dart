import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteTemplate extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteTemplate({this.quote , this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
            style: TextStyle(
                fontSize: 17.0,
                fontStyle: FontStyle.italic,
                color : Colors.grey[600]
            ),),
            SizedBox(height: 4.0),
            Text(quote.author,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height : 4.0),

            Row(
              children: <Widget>[
                RaisedButton.icon(

                  onPressed: delete,
                  label : Text('Delete'),
                  icon: Icon(Icons.delete
                  , color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
