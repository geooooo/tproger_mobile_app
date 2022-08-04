import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injactable.dart';

Future<void> main() async {
  final getIt = configureInjactable();

  final articleListLoader = getIt.get<ArticleListLoader>();

  final articles = await articleListLoader.load();
  print(articles.length);

  await getIt.reset();
}