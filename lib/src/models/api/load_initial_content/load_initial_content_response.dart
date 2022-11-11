import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'load_initial_content_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadInitialContentResponse extends Equatable {
  final String html;

  const LoadInitialContentResponse(this.html);

  factory LoadInitialContentResponse.fromJson(String json) =>
    _$LoadInitialContentResponseFromJson({'html': json});

  @override
  List<Object> get props => [html];
}
