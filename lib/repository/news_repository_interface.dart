import 'package:test_1/model/news_fetch_models.dart';

abstract class NewsRepositoryInterface {
  Future<NewsFetchResponseModels> fetchNewsData();
}
