import '../tdapi.dart';

/// Returns a list of basic group and supergroup chats, which can be used as a
/// group for a channel. Returned basic group chats must be first upgraded to
/// before they can be set as a discussion group. To set a returned supergroup
/// a discussion group, access to its old messages must be enabled using
/// first
/// Returns [Chats]
class GetSuitableDiscussionChats extends TdFunction {
  GetSuitableDiscussionChats();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getSuitableDiscussionChats';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
