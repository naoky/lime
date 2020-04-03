import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lime/models/talk_user.dart';
import 'package:lime/utils/log/logger.dart';
import 'package:state_notifier/state_notifier.dart';

part 'list_view_provider.freezed.dart';

@freezed
abstract class FetchTalkListState with _$FetchTalkListState {
  const factory FetchTalkListState(
      {List<TalkUser> items,
      int currentPage,
      bool isLast}) = _FetchTalkListState;
}

class FetchTalkListController extends StateNotifier<FetchTalkListState> {
  FetchTalkListController()
      : super(FetchTalkListState(items: [], currentPage: 0, isLast: false));

  void loadPage() {
    List<TalkUser> _items = state.items;
    int currentPage = state.currentPage;
    int maxPage = 120;
    int limit = 10;
    for (var i = currentPage * limit; i < i + limit; i++) {
      Log.debug("talk item: $i");
      _items.add(TalkUser(username: 'ユーザー名$i', message: 'メッセージ$i', url: ''));
    }
    state = state.copyWith(
        items: _items,
        currentPage: currentPage++,
        isLast: maxPage == currentPage);
  }
}
