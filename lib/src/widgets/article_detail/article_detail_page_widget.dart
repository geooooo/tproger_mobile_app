import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/hide_content_js_code.dart';
import 'package:webviewx/webviewx.dart';

class ArticleDetailPageWidget extends StatefulWidget {
  final String articleLink;

  const ArticleDetailPageWidget({ 
    required this.articleLink,
    super.key,
  });

  @override
  State<ArticleDetailPageWidget> createState() => _ArticleDetailPageWidgetState();
}

class _ArticleDetailPageWidgetState extends State<ArticleDetailPageWidget> {
  final _logger = GetIt.instance.get<Logger>();
  final _hideContentJsCode = GetIt.instance.get<HideContentJsCode>();

  late final WebViewXController _controller;

  bool _hasError = false;
  bool _isLoaded = false;

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.mainBackgroundColor,
        body: _hasError
          ? const Placeholder(color: Color.fromRGBO(255, 0, 0, 1))
          : Stack(
              children: [
                WebViewX(  
                  initialContent: widget.articleLink,
                  initialSourceType: SourceType.urlBypass,
                  width: double.infinity,
                  height: double.infinity,
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: _onWebViewCreated,
                  onPageFinished: _onPageFinished,
                ),
                if (!_isLoaded) const Placeholder(),
              ],
            ),
      ),
    ),
  );

  Future<void> _onWebViewCreated(WebViewXController controller) async {
    _controller = controller;
  }

  Future<void> _onPageFinished(String url) async {
    _controller.setIgnoreAllGestures(true);

    try {
      await _hide(_hideContentJsCode.header);
      await _hide(_hideContentJsCode.toolIcons);
      await _hide(_hideContentJsCode.footerMeta);
      await _hide(_hideContentJsCode.postWidget);
      await _hide(_hideContentJsCode.recommendedPosts);
      await _hide(_hideContentJsCode.comments);

      _controller.setIgnoreAllGestures(false);

      setState(() { _isLoaded = true; });
    } on Exception {
      setState(() { _hasError = true; });
    }
  }

  Future<void> _hide(String jsCode) async {
    try {
      await _controller.evalRawJavascript(jsCode, inGlobalContext: true);
    } on Exception catch (error, stackTrace) {
      _logger.e('Evaluate js code "$jsCode"', error, stackTrace);
      rethrow;
    }
  }
}
