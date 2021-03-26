import '../tdapi.dart';

/// Returns a list of public chats of the specified type, owned by the user
/// Returns [Chats]
class GetCreatedPublicChats extends TdFunction {
  GetCreatedPublicChats({required this.type, this.extra});

  /// [type] Type of the public chats to return
  final PublicChatType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
