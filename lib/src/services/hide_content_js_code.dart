import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/models/enums/selector.dart';

@singleton
class HideContentJsCode {
  final header = _getJsCode(Selector.header);
  final toolIcons = _getJsCode(Selector.toolIcons);
  final footerMeta = _getJsCode(Selector.footerMeta);
  final postWidget = _getJsCode(Selector.postWidget);
  final recommendedPosts = _getJsCode(Selector.recommendedPosts);
  final comments = _getJsCode(Selector.comments);

  static String _getJsCode(Selector selector) => 
    'document.querySelector("$selector") && document.querySelector("$selector").remove()';
}