import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';
import '../components/card.dart'; // Import the CardArticle component

class NotifikasiView extends StatelessWidget {
  // Inject the NotifikasiController using Get.put()
  final NotifikasiController controller = Get.put(NotifikasiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C1E),
        title: const Text(
          'Notifikasi',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // Add the back button as the leading icon in the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF525CEB)),
          onPressed: () {
            Get.back(); // Navigate back when the icon is pressed
          },
        ),
      ),
      backgroundColor: const Color(0xFF1C1C1E),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          // Check if there are no articles
          if (controller.articles.isEmpty) {
            return const Center(
              child: Text(
                'No notifications',
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          // Render a list of CardArticle widgets
          return ListView.builder(
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              var article = controller.articles[index];
              return CardArticle(article: article); // Use CardArticle
            },
          );
        }),
      ),
    );
  }
}
