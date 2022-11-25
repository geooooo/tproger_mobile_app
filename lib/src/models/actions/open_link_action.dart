import 'package:tproger_mobile_app/src/models/actions/action.dart';

class OpenLinkAction implements Action {
  final String link;

  const OpenLinkAction(this.link);
}