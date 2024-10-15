import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';

class NewsView extends StatelessWidget {
  // Inisialisasi controller
  final NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D3B40), // Match the background color
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D3B40), // Match the app bar color
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color(0xFF525CEB)), // Back button color
          onPressed: () {
            Get.back(); // Navigate back when the icon is pressed
          },
        ),
        title: const Text(
          'News WebView',
          style: TextStyle(color: Colors.white), // Match title color
        ),
      ),
      body: WebViewWidget(controller: controller.webViewController()),
    );
  }
}
