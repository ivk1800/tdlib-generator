part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a public or private message link
class GetMessageLinkInfo extends TdFunction {
  GetMessageLinkInfo({required this.url});

  /// url The message link in the format "https://t.me/c/...", or "tg://privatepost?...", or "https://t.me/username/...", or "tg://resolve?..."
  final String url;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, '@type': CONSTRUCTOR, '@extra': this.extra};
}
