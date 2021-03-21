import '../tdapi.dart';

/// Describes a chat background
class Background extends TdObject {
  Background(
      {required this.id,
      required this.isDefault,
      required this.isDark,
      required this.name,
      Document? this.document,
      required this.type,
      this.extra});

  /// [id] Unique background identifier
  final int id;

  /// [isDefault] True, if this is one of default backgrounds
  final bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used
  /// dark theme
  final bool isDark;

  /// [name] Unique background name
  final String name;

  /// [document] Document with the background; may be null. Null only for filled
  final Document? document;

  /// [type] Type of the background
  final BackgroundType type;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'background';

  static Background? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Background(
        id: int.tryParse(json['id']) ?? 0,
        isDefault: json['is_default'],
        isDark: json['is_dark'],
        name: json['name'],
        document: Document.fromJson(json['document']),
        type: BackgroundType.fromJson(json['type'])!,
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'is_default': this.isDefault,
        'is_dark': this.isDark,
        'name': this.name,
        'document': this.document,
        'type': this.type,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
