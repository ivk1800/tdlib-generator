import '../tdapi.dart';

/// Contains the call identifier
class CallId extends TdObject {
  CallId({required this.id, this.extra});

  /// [id] Call identifier
  final int id;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'callId';

  static CallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallId(id: json['id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, '@type': CONSTRUCTOR, '@extra': this.extra};
}
