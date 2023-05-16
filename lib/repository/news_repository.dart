import 'package:flutter/cupertino.dart';
import 'package:test_1/datastore/news_fetch_datastore_interface.dart';
import 'package:test_1/model/news_fetch_models.dart';
import 'package:test_1/repository/news_repository_interface.dart';

class NewsRepository implements NewsRepositoryInterface {
  final NewsFetchDatastoreInterface datastore;
  NewsRepository({required this.datastore});

  @override
  Future<NewsFetchResponseModels> fetchNewsData() async {
    try {
      final data = await datastore.fetchNewsData();
      return data;
    } on Exception catch (exception) {
      rethrow;
    } finally {
      debugPrint("");
    }
  }
}
