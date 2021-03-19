part of '../tdapi.dart';

/// Group.Objects
/// Provides information about a bot and its supported commands
class BotInfo extends TdObject {
  BotInfo({required this.description, required this.commands});

  /// param_description Long description shown on the user info page
  final String description;

  /// commands A list of commands supported by the bot
  final List<BotCommand> commands;

  static const String CONSTRUCTOR = 'botInfo';

  static BotInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotInfo(
        description: json['description'],
        commands: List<BotCommand>.from((json['commands}'] ?? [])
            .map((item) => BotCommand.fromJson(json['BotCommand'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'description': this.description,
        'commands': this.commands,
        '@type': CONSTRUCTOR
      };
}
