import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get estimateText => 'Оценить';

  @override
  String get weCouldNotFindPostsText => 'У нас не получилось найти посты по вашим тегам, уменьшите их количество или сбросьте фильтр.';

  @override
  String get orFindInOurTelegramChannelsText => 'Или поищите в наших Telegram-каналах:';

  @override
  String get readUsInTelegramText => 'Читать нас в Telegram';

  @override
  String get newText => 'Новое';

  @override
  String get hotText => 'Горячее';

  @override
  String get topOfWeekText => 'Лучшее за неделю';

  @override
  String get topOfMonthText => 'Лучшее за месяц';

  @override
  String get topOfTopText => 'Лучшее за все время';
}
