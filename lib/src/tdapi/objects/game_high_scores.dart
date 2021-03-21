import '../tdapi.dart';

/// Contains a list of game high scores
class GameHighScores extends TdObject {
  GameHighScores({required this.scores, this.extra});

  /// [scores] A list of game high scores
  final List<GameHighScore> scores;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'gameHighScores';

  static GameHighScores? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScores(
        scores: List<GameHighScore>.from((json['scores}'] ?? [])
            .map((item) => GameHighScore.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'scores': this.scores, '@type': CONSTRUCTOR, '@extra': this.extra};
}
