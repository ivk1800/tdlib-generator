import '../tdapi.dart';

/// Sets the list of commands supported by the bot; for bots only
/// Returns [Ok]
class SetCommands extends TdFunction {
  SetCommands({required this.commands});

  /// [commands] List of the bot's commands
  final List<BotCommand> commands;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setCommands';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
