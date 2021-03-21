import '../tdapi.dart';

/// Hides a suggested action
class HideSuggestedAction extends TdFunction {
  HideSuggestedAction({required this.action});

  /// [action] Suggested action to hide
  final SuggestedAction action;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'hideSuggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'action': this.action, '@type': CONSTRUCTOR, '@extra': this.extra};
}
