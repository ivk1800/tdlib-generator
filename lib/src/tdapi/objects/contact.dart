part of '../tdapi.dart';

/// Group.Objects
/// Describes a user contact
class Contact extends TdObject {
  Contact(
      {required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.vcard,
      required this.userId});

  /// phone_number Phone number of the user
  final String phoneNumber;

  /// first_name First name of the user; 1-255 characters in length
  final String firstName;

  /// last_name Last name of the user
  final String lastName;

  /// vcard Additional data about the user in a form of vCard; 0-2048 bytes in length
  final String vcard;

  /// user_id Identifier of the user, if known; otherwise 0
  final int userId;

  static const String CONSTRUCTOR = 'contact';

  static Contact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Contact(
        phoneNumber: json['phone_number'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        vcard: json['vcard'],
        userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'first_name': this.firstName,
        'last_name': this.lastName,
        'vcard': this.vcard,
        'user_id': this.userId,
        '@type': CONSTRUCTOR
      };
}
