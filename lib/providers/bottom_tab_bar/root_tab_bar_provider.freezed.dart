// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'root_tab_bar_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RootTabBarStateTearOff {
  const _$RootTabBarStateTearOff();

  _RootTabBarState call({int currentIndex}) {
    return _RootTabBarState(
      currentIndex: currentIndex,
    );
  }
}

// ignore: unused_element
const $RootTabBarState = _$RootTabBarStateTearOff();

mixin _$RootTabBarState {
  int get currentIndex;

  $RootTabBarStateCopyWith<RootTabBarState> get copyWith;
}

abstract class $RootTabBarStateCopyWith<$Res> {
  factory $RootTabBarStateCopyWith(
          RootTabBarState value, $Res Function(RootTabBarState) then) =
      _$RootTabBarStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

class _$RootTabBarStateCopyWithImpl<$Res>
    implements $RootTabBarStateCopyWith<$Res> {
  _$RootTabBarStateCopyWithImpl(this._value, this._then);

  final RootTabBarState _value;
  // ignore: unused_field
  final $Res Function(RootTabBarState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

abstract class _$RootTabBarStateCopyWith<$Res>
    implements $RootTabBarStateCopyWith<$Res> {
  factory _$RootTabBarStateCopyWith(
          _RootTabBarState value, $Res Function(_RootTabBarState) then) =
      __$RootTabBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

class __$RootTabBarStateCopyWithImpl<$Res>
    extends _$RootTabBarStateCopyWithImpl<$Res>
    implements _$RootTabBarStateCopyWith<$Res> {
  __$RootTabBarStateCopyWithImpl(
      _RootTabBarState _value, $Res Function(_RootTabBarState) _then)
      : super(_value, (v) => _then(v as _RootTabBarState));

  @override
  _RootTabBarState get _value => super._value as _RootTabBarState;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_RootTabBarState(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

class _$_RootTabBarState
    with DiagnosticableTreeMixin
    implements _RootTabBarState {
  const _$_RootTabBarState({this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootTabBarState(currentIndex: $currentIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootTabBarState'))
      ..add(DiagnosticsProperty('currentIndex', currentIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RootTabBarState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @override
  _$RootTabBarStateCopyWith<_RootTabBarState> get copyWith =>
      __$RootTabBarStateCopyWithImpl<_RootTabBarState>(this, _$identity);
}

abstract class _RootTabBarState implements RootTabBarState {
  const factory _RootTabBarState({int currentIndex}) = _$_RootTabBarState;

  @override
  int get currentIndex;
  @override
  _$RootTabBarStateCopyWith<_RootTabBarState> get copyWith;
}
