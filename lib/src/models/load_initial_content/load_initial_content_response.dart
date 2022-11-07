import 'package:json_annotation/json_annotation.dart';

part 'load_initial_content_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadInitialContentResponse {
  final String html;

  const LoadInitialContentResponse(this.html);

  factory LoadInitialContentResponse.fromJson(String json) =>
    _$LoadInitialContentResponseFromJson({'html': json});
}
