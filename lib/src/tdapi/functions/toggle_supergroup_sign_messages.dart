import '../tdapi.dart';

/// Toggles sender signatures messages sent in a channel; requires
/// rights
/// Returns [Ok]
class ToggleSupergroupSignMessages extends TdFunction {
  ToggleSupergroupSignMessages(
      {required this.supergroupId, required this.signMessages});

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleSupergroupSignMessages';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'sign_messages': this.signMessages,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
