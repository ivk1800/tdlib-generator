import '../tdapi.dart';

/// Contains a counter
class Count extends TdObject {
  Count({required this.count, this.extra});

  /// [count] Count
  final int count;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'count';

  static Count? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Count(count: json['count'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'count': this.count, '@type': CONSTRUCTOR, '@extra': this.extra};
}
