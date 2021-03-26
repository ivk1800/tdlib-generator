import '../tdapi.dart';

/// Clears the list of recently found chats
/// Returns [Ok]
class ClearRecentlyFoundChats extends TdFunction {
  ClearRecentlyFoundChats({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
