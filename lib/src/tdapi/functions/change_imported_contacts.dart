import '../tdapi.dart';

/// Changes imported contacts using the list of contacts saved on the device.
/// newly added contacts and, if at least the file database is enabled,
/// recently deleted contacts.. Query result depends on the result of the
/// query, so only one query is possible at the same time
/// Returns [ImportedContacts]
class ChangeImportedContacts extends TdFunction {
  ChangeImportedContacts({required this.contacts});

  /// [contacts] The new list of contacts, contact's vCard are ignored and are
  /// imported
  final List<Contact> contacts;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'changeImportedContacts';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contacts': contacts.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
