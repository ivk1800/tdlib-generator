import '../tdapi.dart';

/// Clears the list of recently found chats
class ClearRecentlyFoundChats extends TdFunction {
  ClearRecentlyFoundChats();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
