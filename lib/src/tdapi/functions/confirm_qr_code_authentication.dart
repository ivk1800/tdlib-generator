part of '../tdapi.dart';

/// Group.Functions
/// Confirms QR code authentication on another device. Returns created session on success
class ConfirmQrCodeAuthentication extends TdFunction {
  ConfirmQrCodeAuthentication({required this.link});

  /// link A link from a QR code. The link must be scanned by the in-app camera
  final String link;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'confirmQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'link': this.link, '@type': CONSTRUCTOR, '@extra': this.extra};
}
