import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';

class HelperService {
  static ArticleModel createArticleModel({int id = 0, bool isBackground = false}) => ArticleModel(
    id: id,
    title: 'Title $id',
    description: 'Description $id',
    articleLink: '',
    bookmarkCount: 0,
    commentCount: 0,
    reactionToCounts: const {},
    viewCount: id,
    author: ArticleUserAuthor(
      avatarLink: 'https://tproger.ru/signed_image/AQ7LzjU5VY2qpnA0X0P37I3qX7aRKQpi9xD5uhQ0eWQ/rs:fill:48:48:1/cb:vimg_1/f:webp/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMC8wNi9sb2dvXzY0MHg2NDBfdGlsZGExODEzNzA5MS5wbmc',
      name: 'Author $id',
    ),
    image: isBackground
      ? const ArticleBackgroundImage(
          link: 'https://tproger.ru/signed_image/kMh9yCFZadd_vK8nVgSO1s1jCZ3iNx_38hqWi1QWPrU/rs:fit:840:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 840w, https://tproger.ru/signed_image/G0yC5hLCX68-NRWOywkYFKFPb09v6gnbbOJ-j9gfswo/rs:fit:1680:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 1680w, https://tproger.ru/signed_image/6lPxJv7jujotMjVeiFoEWnEvqRv65OhaTKezL7RG4Ik/rs:fit:760:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 760w, https://tproger.ru/signed_image/pW8Fa-5SgGd6hX8zXA9kMXwTkGOeT4Glk5xXhyh0Amg/rs:fit:1520:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 1520w, https://tproger.ru/signed_image/ZUOip3xJPskc7GzgAvvhdjMEsbg4lLFwqyMuPgNtgi8/rs:fit:810:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 810w, https://tproger.ru/signed_image/OZh9GL-gWsoV7EUE72nRK5KS-khD5lU2aA9NhFtvVtY/rs:fit:1620:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 1620w, https://tproger.ru/signed_image/BAOGfaUVqfgdqXT-er0z6mUiDGnxI121DW-1kA_PsqI/rs:fit:920:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 920w, https://tproger.ru/signed_image/Xxsj6IJCoCnXRIIqstPJkKRKkvSrppEr9HDVRWU6vZo/rs:fit:1840:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 1840w, https://tproger.ru/signed_image/ehKfIAqUEJQYEkCZdH1o81i0w3dXtMZVfhlh6m8_W1U/rs:fit:600:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 600w, https://tproger.ru/signed_image/0dIqSjTql4ce-q52l79G3ys-Kij15UdKiJEmH79eDp4/rs:fit:1200:0:1/cb:vimg_1/q:10/f:webp/bl:5/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMi8xMS9JTUdfNjA1NC1zY2FsZWQuanBn 1200w',
        )
      : const ArticleIconImage(
          backgroundColor: '#000000',
          link: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
        ),
  );
}