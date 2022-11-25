import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get estimateText => 'Оценить';

  @override
  String get weCouldNotFindPostsText => 'У нас не получилось найти посты по вашим тегам, уменьшите их количество или сбросьте фильтр.';
}
