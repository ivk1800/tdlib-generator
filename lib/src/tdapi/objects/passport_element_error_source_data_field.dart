part of '../tdapi.dart';

/// Group.Objects
/// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  PassportElementErrorSourceDataField({required this.fieldName});

  /// field_name Field name
  final String fieldName;

  static const String CONSTRUCTOR = 'passportElementErrorSourceDataField';

  static PassportElementErrorSourceDataField? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceDataField(fieldName: json['field_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'field_name': this.fieldName, '@type': CONSTRUCTOR};
}
