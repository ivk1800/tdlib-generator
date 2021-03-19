part of '../tdapi.dart';

/// Group.Objects
/// A video
class PageBlockVideo extends PageBlock {
  PageBlockVideo(
      {Video? this.video,
      required this.caption,
      required this.needAutoplay,
      required this.isLooped});

  /// video Video file; may be null
  final Video? video;

  /// caption Video caption
  final PageBlockCaption caption;

  /// need_autoplay True, if the video should be played automatically
  final bool needAutoplay;

  /// is_looped True, if the video should be looped
  final bool isLooped;

  static const String CONSTRUCTOR = 'pageBlockVideo';

  static PageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVideo(
        video: Video.fromJson(json['video']),
        caption: PageBlockCaption.fromJson(json['caption'])!,
        needAutoplay: json['need_autoplay'],
        isLooped: json['is_looped']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video': this.video,
        'caption': this.caption,
        'need_autoplay': this.needAutoplay,
        'is_looped': this.isLooped,
        '@type': CONSTRUCTOR
      };
}
