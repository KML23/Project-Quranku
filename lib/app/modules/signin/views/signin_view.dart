import 'package:quranku/app/modules/dashboard/views/dashboard_view.dart'; // Jalur lengkap ke dashboard_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _formKey = GlobalKey<FormState>(); // Key untuk validasi form
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D3B40),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D3B40),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Kembali ke layar sebelumnya
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Tambahkan key untuk form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30), // Jarak dari atas layar
              const Text(
                'Quran App',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Asalamualaikum !!!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.blueGrey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.blueGrey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.white54,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Cek apakah form valid
                    if (_formKey.currentState!.validate()) {
                      // Arahkan ke halaman DashboardView setelah Sign In
                      Get.to(() => const DashboardView());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Spacer(), // Mengisi ruang kosong di bawah form agar tombol registrasi ada di bagian bawah
              GestureDetector(
                onTap: () {
                  // Navigasi ke halaman register
                },
                child: const Text(
                  "Don't have an account? Register here",
                  style: TextStyle(
                    color: Colors.white54,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20), // Jarak dari bawah layar
            ],
          ),
        ),
      ),
    );
  }
}
