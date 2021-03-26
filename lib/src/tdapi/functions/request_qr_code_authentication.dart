import '../tdapi.dart';

/// Requests QR code authentication by scanning a QR code on another logged in
/// Works only when the current authorization state is
/// or if there is no pending authentication query and the current
/// state is authorizationStateWaitCode, authorizationStateWaitRegistration,
/// authorizationStateWaitPassword
/// Returns [Ok]
class RequestQrCodeAuthentication extends TdFunction {
  RequestQrCodeAuthentication({required this.otherUserIds, this.extra});

  /// [otherUserIds] List of user identifiers of other users currently using the
  final List<int> otherUserIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'requestQrCodeAuthentication';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
