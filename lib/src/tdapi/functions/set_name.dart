part of '../tdapi.dart';

/// Group.Functions
/// Changes the first and last name of the current user
class SetName extends TdFunction {
  SetName({required this.firstName, required this.lastName});

  /// first_name The new value of the first name for the user; 1-64 characters
  final String firstName;

  /// last_name The new value of the optional last name for the user; 0-64 characters
  final String lastName;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'first_name': this.firstName,
        'last_name': this.lastName,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
