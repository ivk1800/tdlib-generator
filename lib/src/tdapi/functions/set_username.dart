import '../tdapi.dart';

/// Changes the username of the current user
/// Returns [Ok]
class SetUsername extends TdFunction {
  SetUsername({required this.username});

  /// [username] The new value of the username. Use an empty string to remove
  /// username
  final String username;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'username': this.username, '@type': CONSTRUCTOR, '@extra': this.extra};
}
