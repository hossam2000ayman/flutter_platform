// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elite_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EliteArticle _$EliteArticleFromJson(Map<String, dynamic> json) => EliteArticle(
      json['body'] as String,
      json['category'] as String,
      json['title'] as String,
      json['subtitle'] as String,
      json['subCategory'] as String,
      json['headerImgUrl'] as String,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EliteArticleToJson(EliteArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'headerImgUrl': instance.headerImgUrl,
      'body': instance.body,
      'tags': instance.tags,
      'category': instance.category,
      'subCategory': instance.subCategory,
    };
