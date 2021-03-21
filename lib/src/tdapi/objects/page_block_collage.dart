part of '../tdapi.dart';

/// Group.Objects
/// A collage
class PageBlockCollage extends PageBlock {
  PageBlockCollage({required this.pageBlocks, required this.caption});

  /// page_blocks Collage item contents
  final List<PageBlock> pageBlocks;

  /// caption Block caption
  final PageBlockCaption caption;

  static const String CONSTRUCTOR = 'pageBlockCollage';

  static PageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCollage(
        pageBlocks: List<PageBlock>.from((json['page_blocks}'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        caption: PageBlockCaption.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'page_blocks': this.pageBlocks,
        'caption': this.caption,
        '@type': CONSTRUCTOR
      };
}
