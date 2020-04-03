import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lime/utils/log/logger.dart';
import 'package:state_notifier/state_notifier.dart';

part 'root_tab_bar_provider.freezed.dart';

/// ルートページのタブ状態クラス
@freezed
abstract class RootTabBarState with _$RootTabBarState {
  const factory RootTabBarState({int currentIndex}) = _RootTabBarState;
}

/// ルートページのタブコントローラー
class RootTabBarController extends StateNotifier<RootTabBarState>
    with LocatorMixin {
  RootTabBarController() : super(RootTabBarState(currentIndex: 0));

  void change(int index) {
    Log.debug('tab index: $index');
    state = state.copyWith(currentIndex: index);
  }
}
