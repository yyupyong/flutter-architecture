import '../model/news_fetch_models.dart';

abstract class NewsFetchDatastoreInterface {
  Future<NewsFetchResponseModels> fetchNewsData();
}