import '../tdapi.dart';

/// Changes the database encryption key. Usually the encryption key is never
/// and is stored in some OS keychain
class SetDatabaseEncryptionKey extends TdFunction {
  SetDatabaseEncryptionKey({required this.newEncryptionKey});

  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'new_encryption_key': this.newEncryptionKey,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
