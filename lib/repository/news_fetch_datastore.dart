import 'package:flutter/cupertino.dart';
import 'package:test_1/model/news_fetch_model.dart';
import 'package:test_1/repository/news_fetch_datastore_interface.dart';
import 'package:dio/dio.dart';

import '../model/news_fetch_models.dart';


class NewsFetchDatastore implements NewsFetchDatastoreInterface {

  final Dio dio;
  NewsFetchDatastore({required this.dio});

  @override
  Future<NewsFetchResponseModels> fetchNewsData() async {
    const url = "";

    try{
      final response = await dio.get(url);
      final responseData = response.data;
      final List<dynamic> datas = responseData["hogehoge"];
      //ここはあくまでクラスをインスタンス化しただけでプロパティにアクセスはしてない
      //実際のnewsModel型の配列はプロパティに存在
      final models = NewsFetchResponseModels();

      datas.forEach((data) {
        final model = NewsFetchResponseModel.fromData(data);
        models.datas.add(model);
      });

      return models;

    } on Exception catch(e){
      throw ('Fail fetchNewsData.');
    } finally {
      debugPrint('End fetchNewsData from datastore.');
    }





  }




}