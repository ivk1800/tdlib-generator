part of '../tdapi.dart';

/// Group.Functions
/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
class GetLocalizationTargetInfo extends TdFunction {
  GetLocalizationTargetInfo({required this.onlyLocal});

  /// only_local If true, returns only locally available information without sending network requests
  final bool onlyLocal;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'only_local': this.onlyLocal,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
