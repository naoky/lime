import 'package:flutter/material.dart';
import 'package:lime/widgets/header.dart';

/// Home Page
class Home extends StatelessWidget {
  @override
  Widget build(_) => _Home();
}

/// Home View
class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'Home',
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
