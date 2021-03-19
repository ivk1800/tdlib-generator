part of '../tdapi.dart';

/// Group.Objects
/// Information about the authentication code that was sent
class AuthenticationCodeInfo extends TdObject {
  AuthenticationCodeInfo(
      {required this.phoneNumber,
      required this.type,
      AuthenticationCodeType? this.nextType,
      required this.timeout});

  /// phone_number A phone number that is being authenticated
  final String phoneNumber;

  /// type Describes the way the code was sent to the user
  final AuthenticationCodeType type;

  /// next_type Describes the way the next code will be sent to the user; may be null
  final AuthenticationCodeType? nextType;

  /// timeout Timeout before the code should be re-sent, in seconds
  final int timeout;

  static const String CONSTRUCTOR = 'authenticationCodeInfo';

  static AuthenticationCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeInfo(
        phoneNumber: json['phone_number'],
        type: AuthenticationCodeType.fromJson(json['type'])!,
        nextType: AuthenticationCodeType.fromJson(json['next_type']),
        timeout: json['timeout']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'type': this.type,
        'next_type': this.nextType,
        'timeout': this.timeout,
        '@type': CONSTRUCTOR
      };
}
