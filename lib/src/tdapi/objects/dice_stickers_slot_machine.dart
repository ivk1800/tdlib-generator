part of '../tdapi.dart';

/// Group.Objects
/// Animated stickers to be combined into a slot machine
class DiceStickersSlotMachine extends DiceStickers {
  DiceStickersSlotMachine(
      {required this.background,
      required this.lever,
      required this.leftReel,
      required this.centerReel,
      required this.rightReel});

  /// background The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  final Sticker background;

  /// lever The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  final Sticker lever;

  /// left_reel The animated sticker with the left reel
  final Sticker leftReel;

  /// center_reel The animated sticker with the center reel
  final Sticker centerReel;

  /// right_reel The animated sticker with the right reel
  final Sticker rightReel;

  static const String CONSTRUCTOR = 'diceStickersSlotMachine';

  static DiceStickersSlotMachine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersSlotMachine(
        background: Sticker.fromJson(json['background'])!,
        lever: Sticker.fromJson(json['lever'])!,
        leftReel: Sticker.fromJson(json['left_reel'])!,
        centerReel: Sticker.fromJson(json['center_reel'])!,
        rightReel: Sticker.fromJson(json['right_reel'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'background': this.background,
        'lever': this.lever,
        'left_reel': this.leftReel,
        'center_reel': this.centerReel,
        'right_reel': this.rightReel,
        '@type': CONSTRUCTOR
      };
}
