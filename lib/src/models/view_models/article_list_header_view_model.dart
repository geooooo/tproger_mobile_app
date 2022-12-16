import 'package:equatable/equatable.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class ArticleListHeaderViewModel extends Equatable {
  final ArticlesSortType articlesSortType;
  final FilterData filterData;
  final DynamicFunctionDynamic dispatch;

  @override
  List<Object> get props => [articlesSortType, filterData, dispatch];

  const ArticleListHeaderViewModel({
    required this.articlesSortType,
    required this.filterData,
    required this.dispatch,
  });
}