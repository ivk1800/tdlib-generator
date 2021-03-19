part of '../tdapi.dart';

/// Group.Objects
/// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  LanguagePackStringValuePluralized(
      {required this.zeroValue,
      required this.oneValue,
      required this.twoValue,
      required this.fewValue,
      required this.manyValue,
      required this.otherValue});

  /// zero_value Value for zero objects
  final String zeroValue;

  /// one_value Value for one object
  final String oneValue;

  /// two_value Value for two objects
  final String twoValue;

  /// few_value Value for few objects
  final String fewValue;

  /// many_value Value for many objects
  final String manyValue;

  /// other_value Default value
  final String otherValue;

  static const String CONSTRUCTOR = 'languagePackStringValuePluralized';

  static LanguagePackStringValuePluralized? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValuePluralized(
        zeroValue: json['zero_value'],
        oneValue: json['one_value'],
        twoValue: json['two_value'],
        fewValue: json['few_value'],
        manyValue: json['many_value'],
        otherValue: json['other_value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'zero_value': this.zeroValue,
        'one_value': this.oneValue,
        'two_value': this.twoValue,
        'few_value': this.fewValue,
        'many_value': this.manyValue,
        'other_value': this.otherValue,
        '@type': CONSTRUCTOR
      };
}
