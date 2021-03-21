part of '../tdapi.dart';

/// Returns default icon name for a filter. Can be called synchronously
class GetChatFilterDefaultIconName extends TdFunction {
  GetChatFilterDefaultIconName({required this.filter});

  /// [filter] Chat filter
  final ChatFilter filter;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatFilterDefaultIconName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'filter': this.filter, '@type': CONSTRUCTOR, '@extra': this.extra};
}
