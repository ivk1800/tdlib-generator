part of '../tdapi.dart';

/// Group.Functions
/// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
class SetDatabaseEncryptionKey extends TdFunction {
  SetDatabaseEncryptionKey({required this.newEncryptionKey});

  /// new_encryption_key New encryption key
  final String newEncryptionKey;

  /// callback sign
  dynamic extra;

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
