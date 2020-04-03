// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'list_view_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FetchTalkListStateTearOff {
  const _$FetchTalkListStateTearOff();

  _FetchTalkListState call(
      {List<TalkUser> items, int currentPage, bool isLast}) {
    return _FetchTalkListState(
      items: items,
      currentPage: currentPage,
      isLast: isLast,
    );
  }
}

// ignore: unused_element
const $FetchTalkListState = _$FetchTalkListStateTearOff();

mixin _$FetchTalkListState {
  List<TalkUser> get items;
  int get currentPage;
  bool get isLast;

  $FetchTalkListStateCopyWith<FetchTalkListState> get copyWith;
}

abstract class $FetchTalkListStateCopyWith<$Res> {
  factory $FetchTalkListStateCopyWith(
          FetchTalkListState value, $Res Function(FetchTalkListState) then) =
      _$FetchTalkListStateCopyWithImpl<$Res>;
  $Res call({List<TalkUser> items, int currentPage, bool isLast});
}

class _$FetchTalkListStateCopyWithImpl<$Res>
    implements $FetchTalkListStateCopyWith<$Res> {
  _$FetchTalkListStateCopyWithImpl(this._value, this._then);

  final FetchTalkListState _value;
  // ignore: unused_field
  final $Res Function(FetchTalkListState) _then;

  @override
  $Res call({
    Object items = freezed,
    Object currentPage = freezed,
    Object isLast = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<TalkUser>,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      isLast: isLast == freezed ? _value.isLast : isLast as bool,
    ));
  }
}

abstract class _$FetchTalkListStateCopyWith<$Res>
    implements $FetchTalkListStateCopyWith<$Res> {
  factory _$FetchTalkListStateCopyWith(
          _FetchTalkListState value, $Res Function(_FetchTalkListState) then) =
      __$FetchTalkListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TalkUser> items, int currentPage, bool isLast});
}

class __$FetchTalkListStateCopyWithImpl<$Res>
    extends _$FetchTalkListStateCopyWithImpl<$Res>
    implements _$FetchTalkListStateCopyWith<$Res> {
  __$FetchTalkListStateCopyWithImpl(
      _FetchTalkListState _value, $Res Function(_FetchTalkListState) _then)
      : super(_value, (v) => _then(v as _FetchTalkListState));

  @override
  _FetchTalkListState get _value => super._value as _FetchTalkListState;

  @override
  $Res call({
    Object items = freezed,
    Object currentPage = freezed,
    Object isLast = freezed,
  }) {
    return _then(_FetchTalkListState(
      items: items == freezed ? _value.items : items as List<TalkUser>,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      isLast: isLast == freezed ? _value.isLast : isLast as bool,
    ));
  }
}

class _$_FetchTalkListState
    with DiagnosticableTreeMixin
    implements _FetchTalkListState {
  const _$_FetchTalkListState({this.items, this.currentPage, this.isLast});

  @override
  final List<TalkUser> items;
  @override
  final int currentPage;
  @override
  final bool isLast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchTalkListState(items: $items, currentPage: $currentPage, isLast: $isLast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchTalkListState'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('isLast', isLast));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchTalkListState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.isLast, isLast) ||
                const DeepCollectionEquality().equals(other.isLast, isLast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(isLast);

  @override
  _$FetchTalkListStateCopyWith<_FetchTalkListState> get copyWith =>
      __$FetchTalkListStateCopyWithImpl<_FetchTalkListState>(this, _$identity);
}

abstract class _FetchTalkListState implements FetchTalkListState {
  const factory _FetchTalkListState(
      {List<TalkUser> items,
      int currentPage,
      bool isLast}) = _$_FetchTalkListState;

  @override
  List<TalkUser> get items;
  @override
  int get currentPage;
  @override
  bool get isLast;
  @override
  _$FetchTalkListStateCopyWith<_FetchTalkListState> get copyWith;
}
