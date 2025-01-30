import 'package:mood_track/src/core/constants/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


final class Emotion {
  final String asset;
  final String emotionName;
  final List<String> attributes;

  Emotion({
    required this.asset,
    required this.emotionName,
    required this.attributes
  });

}

List<Emotion> getEmotions(AppLocalizations l) {
  return [
    Emotion(
      asset: Assets.joy,
      emotionName: l.joy,
      attributes: [
        'Возбуждение',
        'Восторг',
        'Игривость',
        'Наслаждение',
        'Очарование',
        'Осознанность',
        'Смелость',
        'Удовольствие',
        'Чувственность',
        'Энергичность',
        'Экстравагантность'
      ],
    ),
    Emotion(
      asset: Assets.fear,
      emotionName: l.fear,
      attributes: ['Осторожность', 'Тревожность', 'Подозрительность'],
    ),
    Emotion(
      asset: Assets.rabies,
      emotionName: l.rabies,
      attributes: ['Гнев', 'Агрессия', 'Напряжение'],
    ),
    Emotion(
      asset: Assets.sadness,
      emotionName: l.sadness,
      attributes: ['Тоска', 'Печаль', 'Одиночество'],
    ),
    Emotion(
      asset: Assets.calmness,
      emotionName: l.calmness,
      attributes: ['Умиротворенность', 'Расслабленность', 'Гармония'],
    ),
    Emotion(
      asset: Assets.force,
      emotionName: l.force,
      attributes: ['Сила', 'Мощь', 'Стойкость'],
    ),
  ];
}