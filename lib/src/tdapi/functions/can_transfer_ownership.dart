import '../tdapi.dart';

/// Checks whether the current session can be used to transfer a chat
/// to another user
class CanTransferOwnership extends TdFunction {
  CanTransferOwnership();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'canTransferOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
