// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart'
    as _i8;
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart'
    as _i3;
import 'package:tproger_mobile_app/src/services/di_configuration/register_module.dart'
    as _i5;
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $configureInjactable(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.ArticleListParser>(_i3.ArticleListParser());
  gh.singleton<_i4.Dio>(registerModule.dio, dispose: _i5.disposeDio);
  gh.singleton<_i6.Logger>(registerModule.logger, dispose: _i5.disposeLogger);
  gh.singleton<_i7.HttpService>(
      _i7.HttpService(get<_i4.Dio>(), get<_i6.Logger>()));
  gh.singleton<_i8.ArticleListLoader>(_i8.ArticleListLoader(
      get<_i6.Logger>(), get<_i3.ArticleListParser>(), get<_i7.HttpService>()));
  return get;
}

class _$RegisterModule extends _i5.RegisterModule {}
