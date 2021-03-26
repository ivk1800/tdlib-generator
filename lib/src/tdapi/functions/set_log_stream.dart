import '../tdapi.dart';

/// Sets new log stream for internal logging of TDLib. Can be called
/// Returns [Ok]
class SetLogStream extends TdFunction {
  SetLogStream({required this.logStream});

  /// [logStream] New log stream
  final LogStream logStream;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setLogStream';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'log_stream': this.logStream.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
