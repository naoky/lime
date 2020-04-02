import 'dart:convert';
import 'dart:core';

import 'package:logger/logger.dart';

/// Loggerのラッパークラス
class Log {
  static final Logger logger = Logger(
    printer: Printer(),
  );

  static void debug(dynamic message, [dynamic error, StackTrace stackTrace]) {
    logger.d(message, [error, stackTrace]);
  }

  static void info(dynamic message, [dynamic error, StackTrace stackTrace]) {
    logger.i(message, [error, stackTrace]);
  }

  static void warn(dynamic message, [dynamic error, StackTrace stackTrace]) {
    logger.w(message, [error, stackTrace]);
  }

  static void error(dynamic message, [dynamic error, StackTrace stackTrace]) {
    logger.e(message, [error, stackTrace]);
  }

  static void fatal(dynamic message, [dynamic error, StackTrace stackTrace]) {
    logger.wtf(message, [error, stackTrace]);
  }
}

/// ログ書式クラス
/// 標準のPrettyPrinterは、行数を使いすぎるため、シンプルなものに差し替え
class Printer extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    var formatted = <String>[];
    var dt = _formatTime();
    var message = _stringify(event.message);
    var line = _formatLine();
    var level = _formatLevel(event.level);

    var _main = "$dt  $level  $message  line: $line";
    formatted.add(_main);

    return formatted;
  }

  /// 文字列化
  String _stringify(dynamic value) {
    if (value is Map || value is Iterable) {
      var encoder = JsonEncoder.withIndent('  ');
      return encoder.convert(value);
    } else {
      return value.toString();
    }
  }

  /// 日付フォーマッター
  String _formatTime() {
    var now = DateTime.now();
    var y = now.year.toString();
    var m = now.month.toString().padLeft(2, '0');
    var d = now.day.toString().padLeft(2, '0');
    var h = now.hour.toString().padLeft(2, '0');
    var i = now.minute.toString().padLeft(2, '0');
    var s = now.second.toString().padLeft(2, '0');
    var ms = now.millisecond.toString().padLeft(3, '0');
    var us = now.microsecond.toString().padLeft(3, '0');

    return "$y-$m-$d $h:$i:$s.$ms$us";
  }

  /// Lineフォーマッター
  String _formatLine() {
    var line = '';
    var lines = StackTrace.current.toString().split("\n");
    if (6 < lines.length) {
      var match = RegExp(r'^\#\d+\s+(.+)$').firstMatch(lines[5]);
      line = match.group(1);
    }
    return line;
  }

  /// ログレベルフォーマッター
  String _formatLevel(Level level) {
    String _text;
    switch (level) {
      case Level.info:
        _text = 'INFO';
        break;
      case Level.error:
        _text = 'ERROR';
        break;
      case Level.warning:
        _text = 'WARN';
        break;
      case Level.wtf:
        _text = 'FATAL';
        break;
      case Level.verbose:
      case Level.debug:
      case Level.nothing:
      default:
        _text = 'DEBUG';
        break;
    }
    return _text.padRight(5, ' ');
  }
}
