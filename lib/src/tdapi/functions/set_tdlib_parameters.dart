import '../tdapi.dart';

/// Sets the parameters for TDLib initialization. Works only when the current
/// state is authorizationStateWaitTdlibParameters
/// Returns [Ok]
class SetTdlibParameters extends TdFunction {
  SetTdlibParameters({required this.parameters, this.extra});

  /// [parameters] Parameters
  final TdlibParameters parameters;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setTdlibParameters';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'parameters': this.parameters.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
