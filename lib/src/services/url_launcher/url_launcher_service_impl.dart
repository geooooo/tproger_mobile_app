import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/services/url_launcher/url_launcher_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

@Singleton(as: UrlLauncherService)
class UrlLauncherServiceImpl implements UrlLauncherService {
  @override
  Future<void> launch(String url) => launchUrlString(url, mode: LaunchMode.externalApplication);
}