part of '../tdapi.dart';

/// Group.Functions
/// Creates a new call
class CreateCall extends TdFunction {
  CreateCall(
      {required this.userId, required this.protocol, required this.isVideo});

  /// user_id Identifier of the user to be called
  final int userId;

  /// protocol Description of the call protocols supported by the application
  final CallProtocol protocol;

  /// is_video True, if a video call needs to be created
  final bool isVideo;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'protocol': this.protocol,
        'is_video': this.isVideo,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
