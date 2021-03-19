part of '../tdapi.dart';

/// Group.Functions
/// Deletes a profile photo
class DeleteProfilePhoto extends TdFunction {
  DeleteProfilePhoto({required this.profilePhotoId});

  /// profile_photo_id Identifier of the profile photo to delete
  final int profilePhotoId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'profile_photo_id': this.profilePhotoId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
