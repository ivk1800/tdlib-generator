part of '../tdapi.dart';

/// Group.Objects
/// A media album
class PushMessageContentMediaAlbum extends PushMessageContent {
  PushMessageContentMediaAlbum(
      {required this.totalCount,
      required this.hasPhotos,
      required this.hasVideos,
      required this.hasAudios,
      required this.hasDocuments});

  /// total_count Number of messages in the album
  final int totalCount;

  /// has_photos True, if the album has at least one photo
  final bool hasPhotos;

  /// has_videos True, if the album has at least one video
  final bool hasVideos;

  /// has_audios True, if the album has at least one audio file
  final bool hasAudios;

  /// has_documents True, if the album has at least one document
  final bool hasDocuments;

  static const String CONSTRUCTOR = 'pushMessageContentMediaAlbum';

  static PushMessageContentMediaAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMediaAlbum(
        totalCount: json['total_count'],
        hasPhotos: json['has_photos'],
        hasVideos: json['has_videos'],
        hasAudios: json['has_audios'],
        hasDocuments: json['has_documents']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'has_photos': this.hasPhotos,
        'has_videos': this.hasVideos,
        'has_audios': this.hasAudios,
        'has_documents': this.hasDocuments,
        '@type': CONSTRUCTOR
      };
}
