import '../tdapi.dart';

/// Resets all notification settings to their default values. By default, all
/// are unmuted, the sound is set to "default" and message previews are shown
/// Returns [Ok]
class ResetAllNotificationSettings extends TdFunction {
  ResetAllNotificationSettings();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resetAllNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
