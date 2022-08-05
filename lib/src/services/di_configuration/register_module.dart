import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/base_url.dart';

@module
abstract class RegisterModule {
  @Singleton(dispose: disposeLogger)
  Logger get logger => Logger();

  @Singleton(dispose: disposeDio)
  Dio get dio {
    final dio = Dio(BaseOptions(baseUrl: BaseUrl.base.value));
    dio.interceptors.add(dioLoggerInterceptor);
    return dio;
  }
}

void disposeLogger(Logger logger) => logger.close();

void disposeDio(Dio dio) => dio.close();
