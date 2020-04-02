import 'package:flutter/material.dart';
import 'package:lime/widgets/header.dart';

/// News Page
class News extends StatelessWidget {
  @override
  Widget build(_) => _News();
}

/// News View
class _News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'ニュース',
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Center(
          child: Text('ニュース'),
        ),
      ),
    );
  }
}
