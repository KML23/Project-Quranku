import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C1E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Get.back(); // Kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor:
          const Color(0xFF1C1C1E), // Sesuai warna latar belakang gambar
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Atur posisi vertical
          crossAxisAlignment:
              CrossAxisAlignment.start, // Atur posisi horizontal
          children: [
            const SizedBox(
                height: 20), // Jarak antara teks notifikasi dan tombol lainnya

            // Tombol-tombol pengaturan
            _buildSettingsButton('Account', () {
              _showAccountDialog(context);
            }),
            _buildSettingsButton('Notification', () {
              _showNotificationDialog(context); // Tampilkan dialog notification
            }),
            _buildSettingsButton('Privacy & Security', () {
              _showPrivacyDialog(context);
            }),
            _buildSettingsButton('Help & Support', () {
              _showHelpDialog(context);
            }),
            _buildSettingsButton('About', () {
              _showAboutDialog(context);
            }),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat tombol pengaturan yang konsisten
  Widget _buildSettingsButton(String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF525CEB), // Warna biru dari gambar
          minimumSize: const Size(double.infinity, 50), // Lebar penuh
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Membuat sudut membulat
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan modal di tengah ketika tombol Notification ditekan
  void _showNotificationDialog(BuildContext context) {
    bool remindersEnabled = false; // Status awal untuk Reminders
    bool recommendationsEnabled = false; // Status awal untuk Recommendations

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor:
              const Color(0xFF525CEB), // Warna latar belakang sesuai gambar
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min, // Sesuaikan dengan konten
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alignment kiri
                  children: [
                    const Text(
                      'Notification Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Reminders',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Switch(
                          value: remindersEnabled,
                          onChanged: (value) {
                            setState(() {
                              remindersEnabled = value; // Update status switch
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommendations',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Switch(
                          value: recommendationsEnabled,
                          onChanged: (value) {
                            setState(() {
                              recommendationsEnabled =
                                  value; // Update status switch
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  // Fungsi untuk menampilkan modal di tengah ketika tombol Account ditekan
  void _showAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor:
              const Color(0xFF525CEB), // Warna latar belakang sesuai gambar
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Sesuaikan dengan konten
              crossAxisAlignment: CrossAxisAlignment.start, // Aligment kiri
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'zulkiaPatuti@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Notification',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  '5559/10001',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Privacy & Security',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Help & Support',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  '15-08-2004',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Google',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  // Fungsi untuk menampilkan modal untuk Privacy & Security
  void _showPrivacyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: const Color(0xFF525CEB),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy & Security',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Kebijakan PrivasiTerakhir diperbarui: 10 Oktober 2024Kebijakan Privasi ini menjelaskan kebijakan dan prosedur Kami terkait pengumpulan, penggunaan, dan pengungkapan informasi Anda saat Anda menggunakan Layanan...',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  // Fungsi untuk menampilkan modal untuk Help & Support
  void _showHelpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: const Color(0xFF525CEB),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Help & Support',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Untuk informasi lebih lanjut tentang aplikasi ini CONTACT: zulkiapatuti@gmail.com.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  // Fungsi untuk menampilkan modal untuk About
  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: const Color(0xFF525CEB),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Selamat datang di Aplikasi Quran, sumber nomor satu Anda untuk semua hal baik...',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
