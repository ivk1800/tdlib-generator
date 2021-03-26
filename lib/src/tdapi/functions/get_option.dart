import '../tdapi.dart';

/// Returns the value of an option by its name. (Check the list of available
/// on https://core.telegram.org/tdlib/options.) Can be called before
/// Returns [OptionValue]
class GetOption extends TdFunction {
  GetOption({required this.name, this.extra});

  /// [name] The name of the option
  final String name;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getOption';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, '@type': CONSTRUCTOR, '@extra': this.extra};
}
