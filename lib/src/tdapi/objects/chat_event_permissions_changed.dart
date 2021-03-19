part of '../tdapi.dart';

/// Group.Objects
/// The chat permissions was changed
class ChatEventPermissionsChanged extends ChatEventAction {
  ChatEventPermissionsChanged(
      {required this.oldPermissions, required this.newPermissions});

  /// old_permissions Previous chat permissions
  final ChatPermissions oldPermissions;

  /// new_permissions New chat permissions
  final ChatPermissions newPermissions;

  static const String CONSTRUCTOR = 'chatEventPermissionsChanged';

  static ChatEventPermissionsChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPermissionsChanged(
        oldPermissions: ChatPermissions.fromJson(json['old_permissions'])!,
        newPermissions: ChatPermissions.fromJson(json['new_permissions'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_permissions': this.oldPermissions,
        'new_permissions': this.newPermissions,
        '@type': CONSTRUCTOR
      };
}
