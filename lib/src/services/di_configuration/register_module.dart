import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/enums/base_url.dart';
import 'package:dio_logger/dio_logger.dart';

final dioBaseOptions = BaseOptions(baseUrl: BaseUrl.base.value);

@module
abstract class RegisterModule {
  @Singleton(dispose: disposeLogger)
  Logger get logger => Logger();

  @Singleton(dispose: disposeDio)
  Dio get dio => Dio(dioBaseOptions)
    ..interceptors.add(dioLoggerInterceptor);
}

void disposeLogger(Logger logger) => logger.close();

void disposeDio(Dio dio) => dio.close();
