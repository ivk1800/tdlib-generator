part of '../tdapi.dart';

/// Returns all user contacts
class GetContacts extends TdFunction {
  GetContacts();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
