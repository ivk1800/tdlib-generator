part of '../tdapi.dart';

/// Group.Functions
/// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
class GetLogStream extends TdFunction {
  GetLogStream();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
