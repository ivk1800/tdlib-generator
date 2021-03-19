part of '../tdapi.dart';

/// Group.Objects
/// The supergroup sticker set was changed
class ChatEventStickerSetChanged extends ChatEventAction {
  ChatEventStickerSetChanged(
      {required this.oldStickerSetId, required this.newStickerSetId});

  /// old_sticker_set_id Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// new_sticker_set_id New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String CONSTRUCTOR = 'chatEventStickerSetChanged';

  static ChatEventStickerSetChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventStickerSetChanged(
        oldStickerSetId: int.tryParse(json['old_sticker_set_id']) ?? 0,
        newStickerSetId: int.tryParse(json['new_sticker_set_id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_sticker_set_id': this.oldStickerSetId,
        'new_sticker_set_id': this.newStickerSetId,
        '@type': CONSTRUCTOR
      };
}
