import 'dart:convert';

import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:http/http.dart' as http;

class ArticleService {
  final String _baseUrl = "https://elite-api.afam.app/api/articles";
  Future<List<EliteArticle>> getArticles() async {
    final res = await http.get(Uri.parse(_baseUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> rawData = jsonDecode(res.body);
      List<dynamic> rawArticles = rawData['articles'];
      List<EliteArticle> articles = rawArticles
          .map((dynamic article) => EliteArticle.fromJson(article))
          .toList();
      return articles;
    } else {
      throw "Unable to retrieve articles";
    }
  }
}
