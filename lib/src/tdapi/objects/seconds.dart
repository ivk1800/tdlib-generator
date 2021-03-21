import '../tdapi.dart';

/// Contains a value representing a number of seconds
class Seconds extends TdObject {
  Seconds({required this.seconds, this.extra});

  /// [seconds] Number of seconds
  final double seconds;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'seconds';

  static Seconds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Seconds(seconds: json['seconds'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'seconds': this.seconds, '@type': CONSTRUCTOR, '@extra': this.extra};
}
