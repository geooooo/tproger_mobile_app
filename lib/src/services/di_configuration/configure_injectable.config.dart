// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;
import 'package:tproger_mobile_app/src/services/app_theme_service.dart' as _i3;
import 'package:tproger_mobile_app/src/services/article_list_loader.dart'
    as _i11;
import 'package:tproger_mobile_app/src/services/article_list_parser.dart'
    as _i4;
import 'package:tproger_mobile_app/src/services/article_list_service.dart'
    as _i12;
import 'package:tproger_mobile_app/src/services/di_configuration/register_module.dart'
    as _i6;
import 'package:tproger_mobile_app/src/services/hide_content_js_code.dart'
    as _i7;
import 'package:tproger_mobile_app/src/services/http_service.dart' as _i8;
import 'package:tproger_mobile_app/src/services/middleware_service.dart'
    as _i13;
import 'package:tproger_mobile_app/src/services/reducer_service.dart' as _i10;
import 'package:tproger_mobile_app/src/services/store_factory.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $configureInjectable(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppThemeService>(_i3.AppThemeService());
  gh.singleton<_i4.ArticleListParser>(_i4.ArticleListParser());
  gh.singleton<_i5.Dio>(
    registerModule.dio,
    dispose: _i6.disposeDio,
  );
  gh.singleton<_i7.HideContentJsCode>(_i7.HideContentJsCode());
  gh.singleton<_i8.HttpService>(_i8.HttpService(get<_i5.Dio>()));
  gh.singleton<_i9.Logger>(
    registerModule.logger,
    dispose: _i6.disposeLogger,
  );
  gh.singleton<_i10.ReducerService>(
      _i10.ReducerService(get<_i3.AppThemeService>()));
  gh.singleton<_i11.ArticleListLoader>(_i11.ArticleListLoader(
    get<_i4.ArticleListParser>(),
    get<_i8.HttpService>(),
  ));
  gh.singleton<_i12.ArticleListService>(_i12.ArticleListService(
    get<_i11.ArticleListLoader>(),
    get<_i9.Logger>(),
  ));
  gh.singleton<_i13.MiddlewareService>(
      _i13.MiddlewareService(get<_i12.ArticleListService>()));
  gh.singleton<_i14.StoreFactory>(_i14.StoreFactory(
    get<_i10.ReducerService>(),
    get<_i13.MiddlewareService>(),
  ));
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
