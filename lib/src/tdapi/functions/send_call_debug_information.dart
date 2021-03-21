import '../tdapi.dart';

/// Sends debug information for a call
class SendCallDebugInformation extends TdFunction {
  SendCallDebugInformation(
      {required this.callId, required this.debugInformation});

  /// [callId] Call identifier
  final int callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendCallDebugInformation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'debug_information': this.debugInformation,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
