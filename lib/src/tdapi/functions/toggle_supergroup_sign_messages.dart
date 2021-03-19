part of '../tdapi.dart';

/// Group.Functions
/// Toggles sender signatures messages sent in a channel; requires can_change_info rights
class ToggleSupergroupSignMessages extends TdFunction {
  ToggleSupergroupSignMessages(
      {required this.supergroupId, required this.signMessages});

  /// supergroup_id Identifier of the channel
  final int supergroupId;

  /// sign_messages New value of sign_messages
  final bool signMessages;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'toggleSupergroupSignMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'sign_messages': this.signMessages,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
