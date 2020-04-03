import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'talk_user.freezed.dart';
part 'talk_user.g.dart';

@freezed
abstract class TalkUser with _$TalkUser {
  const factory TalkUser({String username, String message, String url}) =
      _TalkUser;

  factory TalkUser.fromJson(Map<String, dynamic> json) =>
      _$TalkUserFromJson(json);
}
