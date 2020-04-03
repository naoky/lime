import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lime/pages/home.dart';
import 'package:lime/pages/news.dart';
import 'package:lime/pages/talk.dart';
import 'package:lime/pages/timeline.dart';
import 'package:lime/pages/wallet.dart';
import 'package:lime/providers/bottom_tab_bar/root_tab_bar_provider.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  @override
  Widget build(_) =>
      StateNotifierProvider<RootTabBarController, RootTabBarState>(
        create: (_) => RootTabBarController(),
        child: _Root(),
      );
}

class _Root extends StatelessWidget {
  final currentTab = [
    Home(),
    Talk(),
    Timeline(),
    News(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<RootTabBarController>();
    var _currentIndex =
        context.select((RootTabBarState value) => value.currentIndex);

    return Scaffold(
      body: currentTab[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          controller.change(index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.black87 : Colors.black26,
            ),
            title: Text(
              'ホーム',
              style: TextStyle(
                color: _currentIndex == 0 ? Colors.black87 : Colors.black26,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.textsms,
              color: _currentIndex == 1 ? Colors.black87 : Colors.black26,
            ),
            title: Text(
              'トーク',
              style: TextStyle(
                color: _currentIndex == 1 ? Colors.black87 : Colors.black26,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: _currentIndex == 2 ? Colors.black87 : Colors.black26,
            ),
            title: Text(
              'タイムライン',
              style: TextStyle(
                color: _currentIndex == 2 ? Colors.black87 : Colors.black26,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_paste,
              color: _currentIndex == 3 ? Colors.black87 : Colors.black26,
            ),
            title: Text(
              'ニュース',
              style: TextStyle(
                color: _currentIndex == 3 ? Colors.black87 : Colors.black26,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
              color: _currentIndex == 4 ? Colors.black87 : Colors.black26,
            ),
            title: Text(
              'ウォレット',
              style: TextStyle(
                color: _currentIndex == 4 ? Colors.black87 : Colors.black26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
