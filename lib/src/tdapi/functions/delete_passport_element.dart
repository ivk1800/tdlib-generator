import '../tdapi.dart';

/// Deletes a Telegram Passport element
class DeletePassportElement extends TdFunction {
  DeletePassportElement({required this.type});

  /// [type] Element type
  final PassportElementType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deletePassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type, '@type': CONSTRUCTOR, '@extra': this.extra};
}
