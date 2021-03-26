import '../tdapi.dart';

/// Sends a custom request; for bots only
/// Returns [CustomRequestResult]
class SendCustomRequest extends TdFunction {
  SendCustomRequest({required this.method, required this.parameters});

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendCustomRequest';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'method': this.method,
        'parameters': this.parameters,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
