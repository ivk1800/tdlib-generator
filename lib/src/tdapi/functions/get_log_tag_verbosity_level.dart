import '../tdapi.dart';

/// Returns current verbosity level for a specified TDLib internal log tag.
/// be called synchronously
/// Returns [LogVerbosityLevel]
class GetLogTagVerbosityLevel extends TdFunction {
  GetLogTagVerbosityLevel({required this.tag, this.extra});

  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogTagVerbosityLevel';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'tag': this.tag, '@type': CONSTRUCTOR, '@extra': this.extra};
}
