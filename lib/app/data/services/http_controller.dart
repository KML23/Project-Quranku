import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../models/article.dart';

class HttpController extends GetxController {
  static const String _baseUrl = 'https://newsapi.org/';
  static const String _apiKey = 'b54913bf9088485791ef7ff7fa58e363';
  static const String _category = 'business';
  static const String _country = 'id';

  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(
          '${_baseUrl}v2/top-headlines?country=$_country&category=$_category&apiKey=$_apiKey'));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final welcome = Welcome.fromJson(jsonData);
        articles.value = welcome.articles;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
