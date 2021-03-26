import '../tdapi.dart';

/// Adds a message to TDLib internal log. Can be called synchronously
/// Returns [Ok]
class AddLogMessage extends TdFunction {
  AddLogMessage({required this.verbosityLevel, required this.text, this.extra});

  /// [verbosityLevel] The minimum verbosity level needed for the message to be
  /// 0-1023
  final int verbosityLevel;

  /// [text] Text of a message to log
  final String text;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addLogMessage';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'verbosity_level': this.verbosityLevel,
        'text': this.text,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
