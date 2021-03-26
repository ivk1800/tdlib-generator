import '../tdapi.dart';

/// Returns information about a public or private message link
/// Returns [MessageLinkInfo]
class GetMessageLinkInfo extends TdFunction {
  GetMessageLinkInfo({required this.url, this.extra});

  /// [url] The message link in the format "https://t.me/c/...", or
  /// or "https://t.me/username/...", or "tg://resolve?..."
  final String url;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getMessageLinkInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, '@type': CONSTRUCTOR, '@extra': this.extra};
}
