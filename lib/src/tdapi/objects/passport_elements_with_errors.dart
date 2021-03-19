part of '../tdapi.dart';

/// Group.Objects
/// Contains information about a Telegram Passport elements and corresponding errors
class PassportElementsWithErrors extends TdObject {
  PassportElementsWithErrors({required this.elements, required this.errors});

  /// elements Telegram Passport elements
  final List<PassportElement> elements;

  /// errors Errors in the elements that are already available
  final List<PassportElementError> errors;

  static const String CONSTRUCTOR = 'passportElementsWithErrors';

  static PassportElementsWithErrors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementsWithErrors(
        elements: List<PassportElement>.from((json['elements}'] ?? [])
            .map((item) => PassportElement.fromJson(json['PassportElement'])!)
            .toList()),
        errors: List<PassportElementError>.from((json['errors}'] ?? [])
            .map((item) =>
                PassportElementError.fromJson(json['PassportElementError'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'elements': this.elements, 'errors': this.errors, '@type': CONSTRUCTOR};
}
