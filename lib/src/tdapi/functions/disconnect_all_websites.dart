import '../tdapi.dart';

/// Disconnects all websites from the current user's Telegram account
/// Returns [Ok]
class DisconnectAllWebsites extends TdFunction {
  DisconnectAllWebsites({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
