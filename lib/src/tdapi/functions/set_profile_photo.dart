import '../tdapi.dart';

/// Changes a profile photo for the current user
/// Returns [Ok]
class SetProfilePhoto extends TdFunction {
  SetProfilePhoto({required this.photo, this.extra});

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setProfilePhoto';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
