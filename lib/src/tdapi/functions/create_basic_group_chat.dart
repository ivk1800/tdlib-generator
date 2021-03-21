import '../tdapi.dart';

/// Returns an existing chat corresponding to a known basic group
class CreateBasicGroupChat extends TdFunction {
  CreateBasicGroupChat({required this.basicGroupId, required this.force});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// [force] If true, the chat will be created without network request. In this
  /// all information about the chat except its type, title and photo can be
  final bool force;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        'force': this.force,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
