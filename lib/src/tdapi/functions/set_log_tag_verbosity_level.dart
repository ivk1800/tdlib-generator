part of '../tdapi.dart';

/// Group.Functions
/// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
class SetLogTagVerbosityLevel extends TdFunction {
  SetLogTagVerbosityLevel({required this.tag, required this.newVerbosityLevel});

  /// tag Logging tag to change verbosity level
  final String tag;

  /// new_verbosity_level New verbosity level; 1-1024
  final int newVerbosityLevel;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'tag': this.tag,
        'new_verbosity_level': this.newVerbosityLevel,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
