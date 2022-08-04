import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injactable.config.dart';

@InjectableInit(
  initializerName: r'$configureInjactable',
  preferRelativeImports: false,
)
GetIt configureInjactable() => $configureInjactable(GetIt.instance);
