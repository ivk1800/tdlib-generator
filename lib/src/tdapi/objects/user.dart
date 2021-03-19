part of '../tdapi.dart';

/// Group.Objects
/// Represents a user
class User extends TdObject {
  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.phoneNumber,
      required this.status,
      ProfilePhoto? this.profilePhoto,
      required this.isContact,
      required this.isMutualContact,
      required this.isVerified,
      required this.isSupport,
      required this.restrictionReason,
      required this.isScam,
      required this.haveAccess,
      required this.type,
      required this.languageCode});

  /// id User identifier
  final int id;

  /// first_name First name of the user
  final String firstName;

  /// last_name Last name of the user
  final String lastName;

  /// username Username of the user
  final String username;

  /// phone_number Phone number of the user
  final String phoneNumber;

  /// status Current online status of the user
  final UserStatus status;

  /// profile_photo Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// is_contact The user is a contact of the current user
  final bool isContact;

  /// is_mutual_contact The user is a contact of the current user and the current user is a contact of the user
  final bool isMutualContact;

  /// is_verified True, if the user is verified
  final bool isVerified;

  /// is_support True, if the user is Telegram support account
  final bool isSupport;

  /// restriction_reason If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  final String restrictionReason;

  /// is_scam True, if many users reported this user as a scam
  final bool isScam;

  /// have_access If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
  final bool haveAccess;

  /// type Type of the user
  final UserType type;

  /// language_code IETF language tag of the user's language; only available to bots
  final String languageCode;

  static const String CONSTRUCTOR = 'user';

  static User? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        username: json['username'],
        phoneNumber: json['phone_number'],
        status: UserStatus.fromJson(json['status'])!,
        profilePhoto: ProfilePhoto.fromJson(json['profile_photo']),
        isContact: json['is_contact'],
        isMutualContact: json['is_mutual_contact'],
        isVerified: json['is_verified'],
        isSupport: json['is_support'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        haveAccess: json['have_access'],
        type: UserType.fromJson(json['type'])!,
        languageCode: json['language_code']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'first_name': this.firstName,
        'last_name': this.lastName,
        'username': this.username,
        'phone_number': this.phoneNumber,
        'status': this.status,
        'profile_photo': this.profilePhoto,
        'is_contact': this.isContact,
        'is_mutual_contact': this.isMutualContact,
        'is_verified': this.isVerified,
        'is_support': this.isSupport,
        'restriction_reason': this.restrictionReason,
        'is_scam': this.isScam,
        'have_access': this.haveAccess,
        'type': this.type,
        'language_code': this.languageCode,
        '@type': CONSTRUCTOR
      };
}
