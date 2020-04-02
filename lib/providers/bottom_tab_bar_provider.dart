import 'package:lime/utils/log/logger.dart';
import 'package:state_notifier/state_notifier.dart';

/// タブの状態クラス
class BottomTabBarState {
  final int currentIndex;
  BottomTabBarState(this.currentIndex);
}

/// タブの状態管理クラス
class BottomTabBarController extends StateNotifier<BottomTabBarState>
    with LocatorMixin {
  BottomTabBarController() : super(BottomTabBarState(0));

  void change(int index) {
    Log.debug('tab index: $index');
    state = BottomTabBarState(index);
  }

  int get currentIndex => state.currentIndex;
}
