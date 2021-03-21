import '../tdapi.dart';

/// Returns a list of recently inactive supergroups and channels. Can be used
/// user reaches limit on the number of joined supergroups and channels and
/// CHANNELS_TOO_MUCH error
class GetInactiveSupergroupChats extends TdFunction {
  GetInactiveSupergroupChats();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
