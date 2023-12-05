import 'package:news_app/domain/entities/news_entity.dart';
import 'package:news_app/domain/repository/base_news_repo.dart';

class NewsUseCase {
  final BaseNewsRepo baseNewsRepo;
  NewsUseCase(this.baseNewsRepo);
  Future<List<NewsEntity>> call(String country) async {
    return await baseNewsRepo.getNews(country);
  }
}
