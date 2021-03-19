part of '../tdapi.dart';

/// Group.Objects
/// Contains information about countries
class Countries extends TdObject {
  Countries({required this.countries});

  /// countries The list of countries
  final List<CountryInfo> countries;

  static const String CONSTRUCTOR = 'countries';

  static Countries? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Countries(
        countries: List<CountryInfo>.from((json['countries}'] ?? [])
            .map((item) => CountryInfo.fromJson(json['CountryInfo'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'countries': this.countries, '@type': CONSTRUCTOR};
}
