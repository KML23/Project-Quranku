import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quranku/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF312F33),
        body: Quranku(),
      ),
    );
  }
}

class Quranku extends StatelessWidget {
  const Quranku({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Quran App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 1.5 * screenHeight / 100,
            ),

            const Text(
              'Pelajari Al Quran setiap hari dan bacalah sekali setiap hari',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 50.0, // Sesuaikan jarak antara teks dan gambar
            ),

            Container(
              height: 458.1, // Ukuran sesuai gambar masjid
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF3D3B40),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'images/imagehome.png', // Ganti dengan path gambar masjid Anda
                  fit: BoxFit.contain, // Gambar memenuhi container
                ),
              ),
            ),

            const SizedBox(height: 0.0), // Jarak antara gambar dan tombol
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6C63FF),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 15.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () => Get.toNamed(Routes.SIGNIN),
              child: const Text(
                'Get started',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
