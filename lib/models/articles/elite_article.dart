import 'package:json_annotation/json_annotation.dart';

part 'elite_article.g.dart';

@JsonSerializable()
class EliteArticle {
  String title;
  String subtitle;
  String headerImgUrl;
  String body;
  List<String>? tags;
  String category;
  String subCategory;
  EliteArticle(this.body, this.category, this.title, this.subtitle,
      this.subCategory, this.headerImgUrl, this.tags);
  factory EliteArticle.fromJson(Map<String, dynamic> data) =>
      _$EliteArticleFromJson(data);
  Map<String, dynamic> toJson() => _$EliteArticleToJson(this);
}
