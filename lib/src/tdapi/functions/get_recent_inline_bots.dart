part of '../tdapi.dart';

/// Group.Functions
/// Returns up to 20 recently used inline bots in the order of their last usage
class GetRecentInlineBots extends TdFunction {
  GetRecentInlineBots();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getRecentInlineBots';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
