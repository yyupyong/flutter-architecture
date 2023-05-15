import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_1/providers/news_fetch_datastore_provider.dart';
import 'package:test_1/repository/news_repository.dart';
import 'package:test_1/repository/news_repository_interface.dart';

final newsRepositoryProvider = Provider<NewsRepositoryInterface>(
  (ref) => NewsRepository(
    datastore: ref.read(newsFetchDatastoreProvider),
  ),
);
