import '../tdapi.dart';

/// Contains an HTTP URL
class HttpUrl extends TdObject {
  HttpUrl({required this.url, this.extra});

  /// [url] The URL
  final String url;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'httpUrl';

  static HttpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return HttpUrl(url: json['url'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, '@type': CONSTRUCTOR, '@extra': this.extra};
}
