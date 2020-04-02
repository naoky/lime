import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget with PreferredSizeWidget {
  String title;

  Header({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.settings),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.add),
        ),
      ],
      title: Text(
        this.title,
      ),
      backgroundColor: Colors.black87,
      centerTitle: true,
      elevation: 0.0,
    );
  }

  /// デフォルトのサイズを設定する。
  /// AppBarの設定（kToolbarHeight）に合わせる
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
