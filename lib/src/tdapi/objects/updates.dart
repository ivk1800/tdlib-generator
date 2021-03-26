import '../tdapi.dart';

/// Contains a list of updates
class Updates extends TdObject {
  Updates({required this.updates, this.extra});

  /// [updates] List of updates
  final List<Update> updates;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'updates';

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
        updates: List<Update>.from((json['updates}'] ?? [])
            .map((item) => Update.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'updates': updates.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
