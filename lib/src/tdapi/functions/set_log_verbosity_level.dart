import '../tdapi.dart';

/// Sets the verbosity level of the internal logging of TDLib. Can be called
/// Returns [Ok]
class SetLogVerbosityLevel extends TdFunction {
  SetLogVerbosityLevel({required this.newVerbosityLevel, this.extra});

  /// [newVerbosityLevel] New value of the verbosity level for logging. Value 0
  /// to fatal errors, value 1 corresponds to errors, value 2 corresponds to
  /// and debug warnings, value 3 corresponds to informational, value 4
  /// to debug, value 5 corresponds to verbose debug, value greater than 5 and
  /// to 1023 can be used to enable even more logging
  final int newVerbosityLevel;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setLogVerbosityLevel';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'new_verbosity_level': this.newVerbosityLevel,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
