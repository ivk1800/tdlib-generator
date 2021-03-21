import '../tdapi.dart';

/// Searches for a background by its name
class SearchBackground extends TdFunction {
  SearchBackground({required this.name});

  /// [name] The name of the background
  final String name;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, '@type': CONSTRUCTOR, '@extra': this.extra};
}
