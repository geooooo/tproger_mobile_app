import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

class HelperService {
  static ArticleModel createArticleModel({
    int id = 0, 
    String title = 'Title',
    String description = 'Description',
    int bookmarkCount = 0,
    int commentCount = 0,
    Map<Reaction, int> reactionToCounts = const {},
    int viewCount = 0,
    String authorName = 'Author',
    bool isBackgroundImage = false,
    String backgroundColor = '#000000',
  }) => ArticleModel(
    id: id,
    title: title,
    description: description,
    articleLink: '',
    bookmarkCount: bookmarkCount,
    commentCount: commentCount,
    reactionToCounts: reactionToCounts,
    viewCount: viewCount,
    author: ArticleUserAuthor(
      avatarLink: 'https://tproger.ru/signed_image/AQ7LzjU5VY2qpnA0X0P37I3qX7aRKQpi9xD5uhQ0eWQ/rs:fill:48:48:1/cb:vimg_1/f:webp/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMC8wNi9sb2dvXzY0MHg2NDBfdGlsZGExODEzNzA5MS5wbmc',
      name: authorName,
    ),
    image: isBackgroundImage
      ? const ArticleBackgroundImage(
          link: 'https://media.tproger.ru/uploads/2022/10/image_2022-10-10_14-49-49-autoconverted-e1665745183547.jpeg',
        )
      : ArticleIconImage(
          backgroundColor: backgroundColor,
          link: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
        ),
  );
}