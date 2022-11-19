import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_shimmer_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_widget.dart';

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
  bool _isLoading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _preloadImage();
  }

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      ArticleContentImageWidget(
        link: widget.link, 
        backgroundColor: widget.backgroundColor,
      ),
      if (_isLoading) ArticleContentImageShimmerWidget(
        backgroundColor: widget.backgroundColor,
      ),
    ],
  );

  Future<void> _preloadImage() async {
    setState(() { _isLoading = true; });
    
    await precacheImage(NetworkImage(widget.link), context);

    setState(() { _isLoading = false; });
  }
}
