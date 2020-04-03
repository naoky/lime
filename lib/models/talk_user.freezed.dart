// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'talk_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TalkUser _$TalkUserFromJson(Map<String, dynamic> json) {
  return _TalkUser.fromJson(json);
}

class _$TalkUserTearOff {
  const _$TalkUserTearOff();

  _TalkUser call({String username, String message, String url}) {
    return _TalkUser(
      username: username,
      message: message,
      url: url,
    );
  }
}

// ignore: unused_element
const $TalkUser = _$TalkUserTearOff();

mixin _$TalkUser {
  String get username;
  String get message;
  String get url;

  Map<String, dynamic> toJson();
  $TalkUserCopyWith<TalkUser> get copyWith;
}

abstract class $TalkUserCopyWith<$Res> {
  factory $TalkUserCopyWith(TalkUser value, $Res Function(TalkUser) then) =
      _$TalkUserCopyWithImpl<$Res>;
  $Res call({String username, String message, String url});
}

class _$TalkUserCopyWithImpl<$Res> implements $TalkUserCopyWith<$Res> {
  _$TalkUserCopyWithImpl(this._value, this._then);

  final TalkUser _value;
  // ignore: unused_field
  final $Res Function(TalkUser) _then;

  @override
  $Res call({
    Object username = freezed,
    Object message = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      message: message == freezed ? _value.message : message as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$TalkUserCopyWith<$Res> implements $TalkUserCopyWith<$Res> {
  factory _$TalkUserCopyWith(_TalkUser value, $Res Function(_TalkUser) then) =
      __$TalkUserCopyWithImpl<$Res>;
  @override
  $Res call({String username, String message, String url});
}

class __$TalkUserCopyWithImpl<$Res> extends _$TalkUserCopyWithImpl<$Res>
    implements _$TalkUserCopyWith<$Res> {
  __$TalkUserCopyWithImpl(_TalkUser _value, $Res Function(_TalkUser) _then)
      : super(_value, (v) => _then(v as _TalkUser));

  @override
  _TalkUser get _value => super._value as _TalkUser;

  @override
  $Res call({
    Object username = freezed,
    Object message = freezed,
    Object url = freezed,
  }) {
    return _then(_TalkUser(
      username: username == freezed ? _value.username : username as String,
      message: message == freezed ? _value.message : message as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_TalkUser with DiagnosticableTreeMixin implements _TalkUser {
  const _$_TalkUser({this.username, this.message, this.url});

  factory _$_TalkUser.fromJson(Map<String, dynamic> json) =>
      _$_$_TalkUserFromJson(json);

  @override
  final String username;
  @override
  final String message;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TalkUser(username: $username, message: $message, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TalkUser'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TalkUser &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$TalkUserCopyWith<_TalkUser> get copyWith =>
      __$TalkUserCopyWithImpl<_TalkUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TalkUserToJson(this);
  }
}

abstract class _TalkUser implements TalkUser {
  const factory _TalkUser({String username, String message, String url}) =
      _$_TalkUser;

  factory _TalkUser.fromJson(Map<String, dynamic> json) = _$_TalkUser.fromJson;

  @override
  String get username;
  @override
  String get message;
  @override
  String get url;
  @override
  _$TalkUserCopyWith<_TalkUser> get copyWith;
}
