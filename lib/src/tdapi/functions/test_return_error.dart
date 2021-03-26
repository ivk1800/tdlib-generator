import '../tdapi.dart';

/// Returns the specified error and ensures that the Error object is used; for
/// only. Can be called synchronously
/// Returns [Error]
class TestReturnError extends TdFunction {
  TestReturnError({required this.error, this.extra});

  /// [error] The error to be returned
  final TdError error;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testReturnError';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'error': this.error.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
