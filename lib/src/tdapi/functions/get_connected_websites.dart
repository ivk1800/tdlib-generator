import '../tdapi.dart';

/// Returns all website where the current user used Telegram to log in
class GetConnectedWebsites extends TdFunction {
  GetConnectedWebsites();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
