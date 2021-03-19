part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
class GetSupergroup extends TdFunction {
  GetSupergroup({required this.supergroupId});

  /// supergroup_id Supergroup or channel identifier
  final int supergroupId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
