import '../tdapi.dart';

/// Returns list of available TDLib internal log tags, for example,
/// Returns [LogTags]
class GetLogTags extends TdFunction {
  GetLogTags({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogTags';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
