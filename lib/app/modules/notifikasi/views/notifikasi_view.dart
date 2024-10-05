import 'package:quranku/app/modules/settings/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  const NotifikasiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xFF1C1C1E), // Warna latar belakang sesuai gambar
        title: const Text(
          'Notifikasi',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.blue),
            onPressed: () {
              Get.to(() => const SettingsView());
              // Aksi ketika ikon notifikasi di-klik
            },
          ),
        ],
      ),
      backgroundColor:
          const Color(0xFF1C1C1E), // Warna sesuai background gambar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildNotificationCard(
              imageUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg',
              title: 'You will be tested: NO Exception',
              description: 'Mufti Menk\nYouTube',
              timeAgo: '2 mnt yang lalu',
            ),
            const SizedBox(height: 16),
            _buildNotificationCard(
              imageUrl: '', // Notifikasi tanpa gambar
              title: 'Jangan Tinggalkan Sholat!',
              description:
                  'Waktunya sholat zuhur, jangan lewatkan pahala sholat zuhur, manfaat sholat zuhur, lanjutkan membaca...',
              timeAgo: '2 jam yang lalu',
            ),
            const SizedBox(height: 16),
            _buildNotificationCard(
              imageUrl: '', // Notifikasi tanpa gambar
              title: "Today's task",
              description:
                  'Dapatkan pahala yang besar di surga dengan membaca surah ini...',
              timeAgo: '4 jam yang lalu',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat card notifikasi
  Widget _buildNotificationCard({
    required String imageUrl,
    required String title,
    required String description,
    required String timeAgo,
  }) {
    return Card(
      color: const Color(0xFF2C2C2E), // Warna background card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (imageUrl.isNotEmpty) // Jika ada gambar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            if (imageUrl.isNotEmpty) const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    timeAgo,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
