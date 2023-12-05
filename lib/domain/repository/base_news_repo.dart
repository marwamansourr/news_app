import 'package:news_app/domain/entities/news_entity.dart';

abstract class BaseNewsRepo{
  Future<List<NewsEntity>> getNews(String country);

}