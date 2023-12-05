import 'package:news_app/data/model/source_model.dart';
import 'package:news_app/domain/entities/news_entity.dart';

class NewsModel extends NewsEntity{
  const NewsModel({
      super.source,
      super.author,
      super.title,
      super.description,
      super.urlToImage,
      super.content,
  });
  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
      source: SourceModel.fromMap(json['source']),
      author: json['author'] ?? " ",
      title: json['title'] ?? " ",
      description: json['description'] ?? " ",
      urlToImage: json['urlToImage'] ?? " ",
      content: json['content'] ?? " ",
  );

}