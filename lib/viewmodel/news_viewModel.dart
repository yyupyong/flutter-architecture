import 'package:flutter/cupertino.dart';
import 'package:test_1/model/news_fetch_models.dart';
import 'package:test_1/repository/news_repository_interface.dart';

//viewmodel内でUIに公開する値をセット、repositoryからメソッドを呼び出し値を取得
class NewsViewModel {
  final NewsRepositoryInterface repository;
  NewsViewModel({required this.repository});

  late NewsFetchResponseModels _news;
  NewsFetchResponseModels get news => _news;

  Future fetchNewsData() async {
    try {
      final data = await repository.fetchNewsData();
      _news = data;
    } on Exception catch (exception) {
      rethrow;
    } finally {
      debugPrint("End fetchNewsData from viewModel.");
    }
  }
}
