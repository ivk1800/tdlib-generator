import '../tdapi.dart';

/// Disconnects all websites from the current user's Telegram account
class DisconnectAllWebsites extends TdFunction {
  DisconnectAllWebsites();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
