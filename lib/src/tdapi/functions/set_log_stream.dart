part of '../tdapi.dart';

/// Group.Functions
/// Sets new log stream for internal logging of TDLib. Can be called synchronously
class SetLogStream extends TdFunction {
  SetLogStream({required this.logStream});

  /// log_stream New log stream
  final LogStream logStream;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'log_stream': this.logStream,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
