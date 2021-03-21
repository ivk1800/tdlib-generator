import '../tdapi.dart';

/// Sets auto-download settings
class SetAutoDownloadSettings extends TdFunction {
  SetAutoDownloadSettings({required this.settings, required this.type});

  /// [settings] New user auto-download settings
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are applied
  final NetworkType type;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setAutoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'settings': this.settings,
        'type': this.type,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
