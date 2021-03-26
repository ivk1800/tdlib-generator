import '../tdapi.dart';

/// Returns information about a tg:// deep link. Use
/// or "tg:some_unsupported_feature" for testing. Returns a 404 error for
/// links. Can be called before authorization
/// Returns [DeepLinkInfo]
class GetDeepLinkInfo extends TdFunction {
  GetDeepLinkInfo({required this.link, this.extra});

  /// [link] The link
  final String link;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getDeepLinkInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'link': this.link, '@type': CONSTRUCTOR, '@extra': this.extra};
}
