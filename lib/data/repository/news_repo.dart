import 'package:news_app/data/data_source/remote_data_source/news_remote_data_source.dart';
import 'package:news_app/domain/entities/news_entity.dart';
import 'package:news_app/domain/repository/base_news_repo.dart';

class NewsRepo extends BaseNewsRepo{
 final BaseNewsRemoteDataSource baseNewsRemoteDataSource;
 NewsRepo(this.baseNewsRemoteDataSource);

  @override
  Future<List<NewsEntity>> getNews(String country)async {
   final result= await baseNewsRemoteDataSource.getNews(country);
   return result;
  }

}