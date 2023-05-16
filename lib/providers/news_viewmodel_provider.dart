import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_1/model/news_fetch_models.dart';
import 'package:test_1/providers/news_repository_provider.dart';
import 'package:test_1/viewmodel/news_viewModel.dart';

final newsViewModelNotifierProvider = FutureProvider<NewsFetchResponseModels>(
  (ref) async {
    final viewModel =
        NewsViewModel(repository: ref.read(newsRepositoryProvider));
    await viewModel.fetchNewsData();

    return viewModel.news;
  },
);
