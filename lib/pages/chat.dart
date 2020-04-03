import 'package:flutter/material.dart';

/// Chat Page
class Chat extends StatelessWidget {
  final String username;

  const Chat({Key key, this.username}) : super(key: key);

  @override
  Widget build(_) => _Chat(
        title: username,
      );
}

/// Chat View
class _Chat extends StatelessWidget {
  final String title;

  const _Chat({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black87,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.call),
              onPressed: () => {},
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.dehaze),
                onPressed: () => {},
              )),
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('チャット'),
        ),
      ),
    );
  }
}
