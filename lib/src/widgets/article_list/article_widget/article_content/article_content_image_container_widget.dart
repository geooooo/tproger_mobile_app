import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_content_image_shimmer_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_content_image_widget.dart';

class ArticleContentImageContainerWidget extends StatefulWidget {
  final String link;
  final Color backgroundColor;

  const ArticleContentImageContainerWidget({
    required this.link,
    required this.backgroundColor,
    super.key,
  });

  @override
  State<ArticleContentImageContainerWidget> createState() => _ArticleContentImageContainerWidgetState();
}

class _ArticleContentImageContainerWidgetState extends State<ArticleContentImageContainerWidget> {
  final _logger = GetIt.instance.get<Logger>();

  bool _isLoading = true;
  bool _hasError = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _preloadImage();
  }

  @override
  Widget build(BuildContext context) => _isLoading
    ? ArticleContentImageShimmerWidget(
        backgroundColor: widget.backgroundColor,
      )
    : _hasError
    ? Container()
    : ArticleContentImageWidget(
        link: widget.link, 
        backgroundColor: widget.backgroundColor,
      );

  Future<void> _preloadImage() async {
    await precacheImage(
      NetworkImage(widget.link), 
      context,
      onError: _onPreloadImageError,
    );

    setState(() { _isLoading = false; });
  }

   void _onPreloadImageError(Object error, StackTrace? stackTrace) {
    _logger.e('Article image loading', error, stackTrace);

    setState(() { _hasError = true; });
  }
}
