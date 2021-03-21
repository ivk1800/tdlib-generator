part of '../tdapi.dart';

/// Group.Objects
/// Represents a list of chats located nearby
class ChatsNearby extends TdObject {
  ChatsNearby({required this.usersNearby, required this.supergroupsNearby});

  /// users_nearby List of users nearby
  final List<ChatNearby> usersNearby;

  /// supergroups_nearby List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  static const String CONSTRUCTOR = 'chatsNearby';

  static ChatsNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatsNearby(
        usersNearby: List<ChatNearby>.from((json['users_nearby}'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList()),
        supergroupsNearby: List<ChatNearby>.from(
            (json['supergroups_nearby}'] ?? [])
                .map((item) => ChatNearby.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'users_nearby': this.usersNearby,
        'supergroups_nearby': this.supergroupsNearby,
        '@type': CONSTRUCTOR
      };
}
