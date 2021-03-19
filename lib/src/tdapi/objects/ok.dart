part of '../tdapi.dart';

/// Group.Objects
/// An object of this type is returned on a successful function call for certain functions
class Ok extends TdObject {
  const Ok();

  static const String CONSTRUCTOR = 'ok';

  static Ok? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const Ok();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
