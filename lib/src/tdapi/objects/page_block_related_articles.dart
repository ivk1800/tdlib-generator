part of '../tdapi.dart';

/// Group.Objects
/// Related articles
class PageBlockRelatedArticles extends PageBlock {
  PageBlockRelatedArticles({required this.header, required this.articles});

  /// header Block header
  final RichText header;

  /// articles List of related articles
  final List<PageBlockRelatedArticle> articles;

  static const String CONSTRUCTOR = 'pageBlockRelatedArticles';

  static PageBlockRelatedArticles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticles(
        header: RichText.fromJson(json['header'])!,
        articles: List<PageBlockRelatedArticle>.from((json['articles}'] ?? [])
            .map((item) => PageBlockRelatedArticle.fromJson(
                json['PageBlockRelatedArticle'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'header': this.header, 'articles': this.articles, '@type': CONSTRUCTOR};
}
