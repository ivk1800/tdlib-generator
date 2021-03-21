import '../tdapi.dart';

/// Requests QR code authentication by scanning a QR code on another logged in
/// Works only when the current authorization state is
/// or if there is no pending authentication query and the current
/// state is authorizationStateWaitCode, authorizationStateWaitRegistration,
/// authorizationStateWaitPassword
class RequestQrCodeAuthentication extends TdFunction {
  RequestQrCodeAuthentication({required this.otherUserIds});

  /// [otherUserIds] List of user identifiers of other users currently using the
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
