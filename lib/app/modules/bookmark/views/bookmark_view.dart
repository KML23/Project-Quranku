import 'package:quranku/app/modules/dashboard/views/dashboard_view.dart';
import 'package:quranku/app/modules/schedule/views/schedule_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bookmark_controller.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF525CEB)),
          onPressed: () {
            Get.to(() => const DashboardView());
          },
        ),
        title: const Text(
          'Bookmark',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C1E),
      ),
      backgroundColor: const Color(0xFF1C1C1E),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildBookmarkCard(
            title: 'Al-Kahfi',
            details: 'Juz 15, 110 ayat\n(Gua)',
            arabic: 'الكهفي',
            tag: 'Al Kahfi',
          ),
          const SizedBox(height: 16),
          _buildBookmarkCard(
            title: 'Al-Ikhlas',
            details: 'Juz 30, 4 ayat\n(memurnikan keesaan Allah)',
            arabic: 'الإخلاص',
            tag: 'Al Ikhlas',
          ),
          const SizedBox(height: 16),
          _buildBookmarkCard(
            title: 'Al-Qadr',
            details: 'Juz 30, 5 ayat\n(Mulia)',
            arabic: 'القدر',
            tag: 'Al Qadr',
          ),
          const SizedBox(height: 16),
          _buildBookmarkCard(
            title: 'Al-Fil',
            details: 'Juz 30, 5 ayat\n(Gajah)',
            arabic: 'الفيل',
            tag: 'Al Fil',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C1C1E),
        selectedItemColor: const Color(0xFF525CEB),
        unselectedItemColor: Colors.white,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mosque),
            label: 'Schedule',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.to(() => const DashboardView());
          } else if (index == 1) {
            // Stay on the current BookmarkView
          } else if (index == 2) {
            Get.to(() => const ScheduleView());
          }
        },
      ),
    );
  }

  Widget _buildBookmarkCard({
    required String title,
    required String details,
    required String arabic,
    required String tag,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  details,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF525CEB)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  arabic,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tag,
                style: const TextStyle(
                  color: Color(0xFF525CEB),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
