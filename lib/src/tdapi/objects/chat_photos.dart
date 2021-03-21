part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of chat or user profile photos
class ChatPhotos extends TdObject {
  ChatPhotos({required this.totalCount, required this.photos});

  /// total_count Total number of photos
  final int totalCount;

  /// photos List of photos
  final List<ChatPhoto> photos;

  static const String CONSTRUCTOR = 'chatPhotos';

  static ChatPhotos? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotos(
        totalCount: json['total_count'],
        photos: List<ChatPhoto>.from((json['photos}'] ?? [])
            .map((item) => ChatPhoto.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'photos': this.photos,
        '@type': CONSTRUCTOR
      };
}
