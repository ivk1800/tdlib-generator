part of '../tdapi.dart';

/// Returns the specified error and ensures that the Error object is used; for
/// only. Can be called synchronously
class TestReturnError extends TdFunction {
  TestReturnError({required this.error});

  /// [error] The error to be returned
  final TdError error;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testReturnError';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'error': this.error, '@type': CONSTRUCTOR, '@extra': this.extra};
}
