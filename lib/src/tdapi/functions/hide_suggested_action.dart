import '../tdapi.dart';

/// Hides a suggested action
/// Returns [Ok]
class HideSuggestedAction extends TdFunction {
  HideSuggestedAction({required this.action, this.extra});

  /// [action] Suggested action to hide
  final SuggestedAction action;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'hideSuggestedAction';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
