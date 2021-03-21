part of '../tdapi.dart';

/// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
class SetSupergroupUsername extends TdFunction {
  SetSupergroupUsername({required this.supergroupId, required this.username});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the username
  final String username;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setSupergroupUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'username': this.username,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
