import '../tdapi.dart';

/// Sets the parameters for TDLib initialization. Works only when the current
/// state is authorizationStateWaitTdlibParameters
class SetTdlibParameters extends TdFunction {
  SetTdlibParameters({required this.parameters});

  /// [parameters] Parameters
  final TdlibParameters parameters;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'parameters': this.parameters,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
