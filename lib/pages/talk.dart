import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinite_widgets/infinite_widgets.dart';
import 'package:lime/providers/talk/list_view_provider.dart';
import 'package:lime/widgets/header.dart';
import 'package:lime/widgets/list_view/tile.dart';
import 'package:provider/provider.dart';

/// Talk Page
class Talk extends StatelessWidget {
  @override
  Widget build(_) =>
      StateNotifierProvider<FetchTalkListController, FetchTalkListState>(
        create: (_) => FetchTalkListController(),
        child: _Talk(),
      );
}

/// Talk View
class _Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FetchTalkListController>();
    var _items = context.select((FetchTalkListState value) => value.items);
    var _isLast = context.select((FetchTalkListState value) => value.isLast);

    return Scaffold(
      appBar: Header(
        title: 'トーク',
      ),
      body: InfiniteListView.separated(
        itemBuilder: (context, index) {
          return TalkTile(_items[index]);
        },
        itemCount: _items.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            indent: 0.0,
            height: 1.0,
          );
        },
        nextData: () => controller.loadPage(),
        hasNext: _isLast,
      ),
    );
  }
}
