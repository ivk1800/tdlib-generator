import '../tdapi.dart';

/// Contains information about saved Telegram Passport elements
class PassportElements extends TdObject {
  PassportElements({required this.elements, this.extra});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'passportElements';

  static PassportElements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElements(
        elements: List<PassportElement>.from((json['elements'] ?? [])
            .map((item) => PassportElement.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'elements': elements.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
