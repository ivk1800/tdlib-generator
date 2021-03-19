part of '../tdapi.dart';

/// Group.Functions
/// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
class CheckDatabaseEncryptionKey extends TdFunction {
  CheckDatabaseEncryptionKey({required this.encryptionKey});

  /// encryption_key Encryption key to check or set up
  final String encryptionKey;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'encryption_key': this.encryptionKey,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
