part of '../tdapi.dart';

/// Group.Functions
/// Returns list of available TDLib internal log tags, for example,
class GetLogTags extends TdFunction {
  GetLogTags();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
