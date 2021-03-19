part of '../tdapi.dart';

/// Group.Functions
/// Installs/uninstalls or activates/archives a sticker set
class ChangeStickerSet extends TdFunction {
  ChangeStickerSet(
      {required this.setId,
      required this.isInstalled,
      required this.isArchived});

  /// set_id Identifier of the sticker set
  final int setId;

  /// is_installed The new value of is_installed
  final bool isInstalled;

  /// is_archived The new value of is_archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'changeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'set_id': this.setId,
        'is_installed': this.isInstalled,
        'is_archived': this.isArchived,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
