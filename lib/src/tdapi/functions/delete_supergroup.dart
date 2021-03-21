part of '../tdapi.dart';

/// Deletes a supergroup or channel along with all messages in the corresponding chat. This will release the supergroup or channel username and remove all members; requires owner privileges in the supergroup or channel. Chats with more than 1000 members can't be deleted using this method
class DeleteSupergroup extends TdFunction {
  DeleteSupergroup({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
