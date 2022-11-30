// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_next_articles_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoadNextArticlesRequestToJson(
        LoadNextArticlesRequest instance) =>
    <String, dynamic>{
      'page': instance.pageNumber,
      'sort': ArticlesSortType.staticToString(instance.sortType),
      'tags':
          LoadNextArticlesRequest._isForBeginnerToJson(instance.isForBeginner),
      'action': instance.action,
    };
