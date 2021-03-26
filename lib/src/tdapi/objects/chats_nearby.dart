import '../tdapi.dart';

/// Represents a list of chats located nearby
class ChatsNearby extends TdObject {
  ChatsNearby(
      {required this.usersNearby, required this.supergroupsNearby, this.extra});

  /// [usersNearby] List of users nearby
  final List<ChatNearby> usersNearby;

  /// [supergroupsNearby] List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatsNearby';

  static ChatsNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatsNearby(
        usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList()),
        supergroupsNearby: List<ChatNearby>.from(
            (json['supergroups_nearby'] ?? [])
                .map((item) => ChatNearby.fromJson(item))
                .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'users_nearby': usersNearby.map((item) => item.toJson()).toList(),
        'supergroups_nearby':
            supergroupsNearby.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
