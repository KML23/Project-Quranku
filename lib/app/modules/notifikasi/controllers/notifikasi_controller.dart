import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/article.dart';

class NotifikasiController extends GetxController {
  static const String _baseUrl =
      'https://my-json-server.typicode.com/Fallid/codelab-api/db';

  RxList<Article> articles = RxList<Article>([]);
  RxBool isReady = false.obs;
  var selectedIndex = 0.obs;
  final count = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() async {
    await fetchAll();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchAll() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final dataJson = response.body;
        final lastResult = Welcome.fromJson(jsonDecode(dataJson));
        articles.value = lastResult.articles;
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  void increment() => count.value++;
}
