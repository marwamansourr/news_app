import 'package:equatable/equatable.dart';
import 'package:news_app/domain/entities/source_entity.dart';

class NewsEntity extends Equatable {
  final SourceEntity? source;
  final String? author;
  final String? title;
  final String? description;
  final String? urlToImage;
  final String? content;

  const NewsEntity({
    this.source,
    this.author,
    this.title,
    this.description,
    this.urlToImage,
    this.content,
  });

  @override
  List<Object?> get props =>
      [source, author, title, description, urlToImage, content];
}
