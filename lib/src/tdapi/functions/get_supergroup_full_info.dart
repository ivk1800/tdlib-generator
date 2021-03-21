part of '../tdapi.dart';

/// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
class GetSupergroupFullInfo extends TdFunction {
  GetSupergroupFullInfo({required this.supergroupId});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
