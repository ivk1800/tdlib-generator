import '../tdapi.dart';

/// Changes imported contacts using the list of contacts saved on the device.
/// newly added contacts and, if at least the file database is enabled,
/// recently deleted contacts.. Query result depends on the result of the
/// query, so only one query is possible at the same time
class ChangeImportedContacts extends TdFunction {
  ChangeImportedContacts({required this.contacts});

  /// [contacts] The new list of contacts, contact's vCard are ignored and are
  /// imported
  final List<Contact> contacts;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'changeImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'contacts': this.contacts, '@type': CONSTRUCTOR, '@extra': this.extra};
}
