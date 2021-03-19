part of '../tdapi.dart';

/// Group.Functions
/// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error
class GetInactiveSupergroupChats extends TdFunction {
  GetInactiveSupergroupChats();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
