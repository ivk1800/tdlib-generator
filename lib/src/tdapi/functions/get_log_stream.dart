import '../tdapi.dart';

/// Returns information about currently used log stream for internal logging
/// TDLib. Can be called synchronously
/// Returns [LogStream]
class GetLogStream extends TdFunction {
  GetLogStream();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogStream';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
