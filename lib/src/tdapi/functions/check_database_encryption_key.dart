import '../tdapi.dart';

/// Checks the database encryption key for correctness. Works only when the
/// authorization state is authorizationStateWaitEncryptionKey
/// Returns [Ok]
class CheckDatabaseEncryptionKey extends TdFunction {
  CheckDatabaseEncryptionKey({required this.encryptionKey});

  /// [encryptionKey] Encryption key to check or set up
  final String encryptionKey;

  /// callback sign
  dynamic? extra;

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
