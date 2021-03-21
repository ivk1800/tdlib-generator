part of '../tdapi.dart';

/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
class ImportContacts extends TdFunction {
  ImportContacts({required this.contacts});

  /// [contacts] The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  final List<Contact> contacts;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'importContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'contacts': this.contacts, '@type': CONSTRUCTOR, '@extra': this.extra};
}
