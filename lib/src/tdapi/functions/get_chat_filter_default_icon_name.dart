import '../tdapi.dart';

/// Returns default icon name for a filter. Can be called synchronously
/// Returns [Text]
class GetChatFilterDefaultIconName extends TdFunction {
  GetChatFilterDefaultIconName({required this.filter, this.extra});

  /// [filter] Chat filter
  final ChatFilter filter;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatFilterDefaultIconName';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'filter': this.filter.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
