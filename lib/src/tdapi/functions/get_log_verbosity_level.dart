import '../tdapi.dart';

/// Returns current verbosity level of the internal logging of TDLib. Can be
/// synchronously
/// Returns [LogVerbosityLevel]
class GetLogVerbosityLevel extends TdFunction {
  GetLogVerbosityLevel({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogVerbosityLevel';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
