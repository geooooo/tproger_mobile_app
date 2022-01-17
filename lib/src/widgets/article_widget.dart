import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/article_footer.dart';
import 'package:tproger_mobile_app/src/widgets/author_widget.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 38 / 2,
      vertical: 18,
    ),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromRGBO(37, 37, 37, 1),
        width: 1,
      ),
      borderRadius: const BorderRadius.all(Radius.elliptical(18, 18)),
      color: const Color.fromRGBO(24, 29, 28, 1),
    ),
    child: Column(
      children: const [
        AuthorWidget(
          authorName: 'Вадим Бордик',
          avatarLink: 'https://tproger.ru/s3/uploads/2021/12/iconfinder-icon-70-cover-icon-4x.png',
        ),
        SizedBox(height: 18),

        ArticleFooter(),
      ],
    ),
  );
}