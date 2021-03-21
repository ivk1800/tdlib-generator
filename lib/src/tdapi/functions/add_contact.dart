import '../tdapi.dart';

/// Adds a user to the contact list or edits an existing contact by their user
class AddContact extends TdFunction {
  AddContact({required this.contact, required this.sharePhoneNumber});

  /// [contact] The contact to add or edit; phone number can be empty and needs
  /// be specified only if known, vCard is ignored
  final Contact contact;

  /// [sharePhoneNumber] True, if the new contact needs to be allowed to see
  /// user's phone number. A corresponding rule to
  /// will be added if needed. Use the field
  /// to check whether the current user needs to be asked to share their phone
  final bool sharePhoneNumber;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addContact';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contact': this.contact,
        'share_phone_number': this.sharePhoneNumber,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
