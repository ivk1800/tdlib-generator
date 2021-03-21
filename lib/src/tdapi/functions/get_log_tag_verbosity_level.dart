import '../tdapi.dart';

/// Returns current verbosity level for a specified TDLib internal log tag.
/// be called synchronously
class GetLogTagVerbosityLevel extends TdFunction {
  GetLogTagVerbosityLevel({required this.tag});

  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'tag': this.tag, '@type': CONSTRUCTOR, '@extra': this.extra};
}
