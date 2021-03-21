part of '../tdapi.dart';

/// Sets the value of an option. (Check the list of available options on
/// Only writable options can be set. Can be called before authorization
class SetOption extends TdFunction {
  SetOption({required this.name, required this.value});

  /// [name] The name of the option
  final String name;

  /// [value] The new value of the option
  final OptionValue value;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setOption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'value': this.value,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
