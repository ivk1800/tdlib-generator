part of '../tdapi.dart';

/// Changes the location of the current user. Needs to be called if
/// is true and location changes for more than 1 kilometer
class SetLocation extends TdFunction {
  SetLocation({required this.location});

  /// [location] The new location of the user
  final Location location;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'location': this.location, '@type': CONSTRUCTOR, '@extra': this.extra};
}
