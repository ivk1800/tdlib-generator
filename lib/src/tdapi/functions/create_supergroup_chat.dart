import '../tdapi.dart';

/// Returns an existing chat corresponding to a known supergroup or channel
/// Returns [Chat]
class CreateSupergroupChat extends TdFunction {
  CreateSupergroupChat({required this.supergroupId, required this.force});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [force] If true, the chat will be created without network request. In this
  /// all information about the chat except its type, title and photo can be
  final bool force;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'createSupergroupChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'force': this.force,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
