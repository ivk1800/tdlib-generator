part of '../tdapi.dart';

/// Group.Objects
/// The chat photo was changed
class ChatEventPhotoChanged extends ChatEventAction {
  ChatEventPhotoChanged({ChatPhoto? this.oldPhoto, ChatPhoto? this.newPhoto});

  /// old_photo Previous chat photo value; may be null
  final ChatPhoto? oldPhoto;

  /// new_photo New chat photo value; may be null
  final ChatPhoto? newPhoto;

  static const String CONSTRUCTOR = 'chatEventPhotoChanged';

  static ChatEventPhotoChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPhotoChanged(
        oldPhoto: ChatPhoto.fromJson(json['old_photo']),
        newPhoto: ChatPhoto.fromJson(json['new_photo']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_photo': this.oldPhoto,
        'new_photo': this.newPhoto,
        '@type': CONSTRUCTOR
      };
}
