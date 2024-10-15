import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsController extends GetxController {
  // Function to initialize WebViewController
  WebViewController webViewController() {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.aljazeera.com/'));
  }
}
