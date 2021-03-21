import '../tdapi.dart';

/// Changes a profile photo for the current user
class SetProfilePhoto extends TdFunction {
  SetProfilePhoto({required this.photo});

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'photo': this.photo, '@type': CONSTRUCTOR, '@extra': this.extra};
}
