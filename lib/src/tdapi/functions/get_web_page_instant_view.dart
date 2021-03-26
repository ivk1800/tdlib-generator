import '../tdapi.dart';

/// Returns an instant view version of a web page if available. Returns a 404
/// if the web page has no instant view page
/// Returns [WebPageInstantView]
class GetWebPageInstantView extends TdFunction {
  GetWebPageInstantView({required this.url, required this.forceFull});

  /// [url] The web page URL
  final String url;

  /// [forceFull] If true, the full instant view for the web page will be
  final bool forceFull;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getWebPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'force_full': this.forceFull,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
