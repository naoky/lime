import 'package:flutter/material.dart';
import 'package:lime/widgets/header.dart';

/// Talk Page
class Talk extends StatelessWidget {
  @override
  Widget build(_) => _Talk();
}

/// Talk View
class _Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'トーク',
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Text('トーク'),
        ),
      ),
    );
  }
}
