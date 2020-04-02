import 'package:flutter/material.dart';
import 'package:lime/widgets/header.dart';

/// Wallet Page
class Wallet extends StatelessWidget {
  @override
  Widget build(_) => _Wallet();
}

/// Wallet View
class _Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'ウォレット',
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text('ウォレット'),
        ),
      ),
    );
  }
}
