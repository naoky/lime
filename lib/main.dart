import 'package:flutter/material.dart';
import 'package:lime/widgets/root.dart';

void main() {
  runApp(Lime());
}

class Lime extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _Lime(),
    );
  }
}

class _Lime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Root();
  }
}
