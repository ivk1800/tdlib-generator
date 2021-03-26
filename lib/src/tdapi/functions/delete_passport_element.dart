import '../tdapi.dart';

/// Deletes a Telegram Passport element
/// Returns [Ok]
class DeletePassportElement extends TdFunction {
  DeletePassportElement({required this.type});

  /// [type] Element type
  final PassportElementType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deletePassportElement';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
