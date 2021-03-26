import '../tdapi.dart';

/// Contains information about countries
class Countries extends TdObject {
  Countries({required this.countries, this.extra});

  /// [countries] The list of countries
  final List<CountryInfo> countries;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'countries';

  static Countries? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Countries(
        countries: List<CountryInfo>.from((json['countries}'] ?? [])
            .map((item) => CountryInfo.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'countries': countries.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
