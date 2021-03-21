part of '../tdapi.dart';

/// Creates new chat filter. Returns information about the created chat filter
class CreateChatFilter extends TdFunction {
  CreateChatFilter({required this.filter});

  /// [filter] Chat filter
  final ChatFilter filter;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'filter': this.filter, '@type': CONSTRUCTOR, '@extra': this.extra};
}
