@TestOn('vm')

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';
import 'package:tproger_mobile_app/src/models/enums/api_url.dart';
import 'package:tproger_mobile_app/src/models/api/load_initial_content/load_initial_content_response.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/register_module.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

import 'mocks/mocks.dart';

void main() {
  final dio = Dio(dioBaseOptions);
  final dioAdapter = DioAdapter(dio: dio);
  final httpService = HttpService(dio);

  test('load initial content', () async {
    final initialContetMock = await getInitialContetMock();
    final expectedResponse = LoadInitialContentResponse(initialContetMock);

    dioAdapter.onGet(ApiUrl.initial.value, (server) => server.reply(
      200,
      initialContetMock,
    ));

    final response = await httpService.loadInitialContent();

    expect(response, equals(expectedResponse));
  });
}