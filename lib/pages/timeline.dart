import 'package:flutter/material.dart';
import 'package:lime/widgets/header.dart';

/// Timeline Page
class Timeline extends StatelessWidget {
  @override
  Widget build(_) => _Timeline();
}

/// Timeline View
class _Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'タイムライン',
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('タイムライン'),
        ),
      ),
    );
  }
}
