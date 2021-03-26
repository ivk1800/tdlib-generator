import '../tdapi.dart';

/// Clears all imported contacts, contact list remains unchanged
/// Returns [Ok]
class ClearImportedContacts extends TdFunction {
  ClearImportedContacts();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'clearImportedContacts';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
