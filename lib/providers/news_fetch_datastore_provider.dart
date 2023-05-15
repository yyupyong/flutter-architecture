import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_1/datastore/news_fetch_datastore.dart';
import 'package:test_1/datastore/news_fetch_datastore_interface.dart';
import 'package:test_1/providers/dio_provider.dart';

//datastoreをインスタンス化・DI
final newsFetchDatastoreProvider = Provider<NewsFetchDatastoreInterface>(
    (ref) => NewsFetchDatastore(dio: ref.read(dioProbider)));
