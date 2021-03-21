part of '../tdapi.dart';

/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
class RequestQrCodeAuthentication extends TdFunction {
  RequestQrCodeAuthentication({required this.otherUserIds});

  /// [otherUserIds] List of user identifiers of other users currently using the application
  final List<int> otherUserIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'requestQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'other_user_ids': this.otherUserIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
