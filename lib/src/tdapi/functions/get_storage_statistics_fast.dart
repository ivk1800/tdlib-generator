import '../tdapi.dart';

/// Quickly returns approximate storage usage statistics. Can be called before
/// Returns [StorageStatisticsFast]
class GetStorageStatisticsFast extends TdFunction {
  GetStorageStatisticsFast();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
