part of '../tdapi.dart';

/// Group.Functions
/// Clears all imported contacts, contact list remains unchanged
class ClearImportedContacts extends TdFunction {
  ClearImportedContacts();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
