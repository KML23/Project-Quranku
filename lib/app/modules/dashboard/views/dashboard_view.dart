import 'package:quranku/app/modules/home/views/home_view.dart';
import 'package:quranku/app/modules/signin/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quranku/app/modules/bookmark/views/bookmark_view.dart';
import 'package:quranku/app/modules/schedule/views/schedule_view.dart';
import 'package:quranku/app/modules/settings/views/settings_view.dart';
import 'package:quranku/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:quranku/app/modules/surah/views/surah_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  // List of all surahs in the Quran
  List<Map<String, String>> surahList = [
    {
      'name': 'Al-Fatihah',
      'ayah': '7',
      'meaning': 'Pembuka',
      'arabic': 'الفاتحة',
      'juz': '1'
    },
    {
      'name': 'Al-Baqarah',
      'ayah': '286',
      'meaning': 'Sapi Betina',
      'arabic': 'البقرة',
      'juz': '1-3'
    },
    {
      'name': 'Ali-Imran',
      'ayah': '200',
      'meaning': 'Keluarga Imran',
      'arabic': 'آل عمران',
      'juz': '3-4'
    },
    {
      'name': 'An-Nisa\'',
      'ayah': '176',
      'meaning': 'Wanita',
      'arabic': 'النساء',
      'juz': '4-6'
    },
    {
      'name': 'Al-Ma\'idah',
      'ayah': '120',
      'meaning': 'Jamuan',
      'arabic': 'المائدة',
      'juz': '6-7'
    },
    {
      'name': 'Al-An\'am',
      'ayah': '165',
      'meaning': 'Hewan Ternak',
      'arabic': 'الأنعام',
      'juz': '7-8'
    },
    {
      'name': 'Al-A\'raf',
      'ayah': '206',
      'meaning': 'Tempat yang Tertinggi',
      'arabic': 'الأعراف',
      'juz': '8-9'
    },
    {
      'name': 'Al-Anfal',
      'ayah': '75',
      'meaning': 'Harta Rampasan Perang',
      'arabic': 'الأنفال',
      'juz': '9-10'
    },
    {
      'name': 'At-Taubah',
      'ayah': '129',
      'meaning': 'Pengampunan',
      'arabic': 'التوبة',
      'juz': '10-11'
    },
    {
      'name': 'Yunus',
      'ayah': '109',
      'meaning': 'Nabi Yunus',
      'arabic': 'يونس',
      'juz': '11'
    },
    {
      'name': 'Hud',
      'ayah': '123',
      'meaning': 'Nabi Hud',
      'arabic': 'هود',
      'juz': '11-12'
    },
    {
      'name': 'Yusuf',
      'ayah': '111',
      'meaning': 'Nabi Yusuf',
      'arabic': 'يوسف',
      'juz': '12-13'
    },
    {
      'name': 'Ar-Ra\'d',
      'ayah': '43',
      'meaning': 'Guruh',
      'arabic': 'الرعد',
      'juz': '13'
    },
    {
      'name': 'Ibrahim',
      'ayah': '52',
      'meaning': 'Nabi Ibrahim',
      'arabic': 'ابراهيم',
      'juz': '13'
    },
    {
      'name': 'Al-Hijr',
      'ayah': '99',
      'meaning': 'Gunung Al Hijr',
      'arabic': 'الحجر',
      'juz': '14'
    },
    {
      'name': 'An-Nahl',
      'ayah': '128',
      'meaning': 'Lebah',
      'arabic': 'النحل',
      'juz': '14-15'
    },
    {
      'name': 'Al-Isra\'',
      'ayah': '111',
      'meaning': 'Perjalanan Malam',
      'arabic': 'الإسراء',
      'juz': '15'
    },
    {
      'name': 'Al-Kahf',
      'ayah': '110',
      'meaning': 'Penghuni-penghuni Gua',
      'arabic': 'الكهف',
      'juz': '15-16'
    },
    {
      'name': 'Maryam',
      'ayah': '98',
      'meaning': 'Maryam',
      'arabic': 'مريم',
      'juz': '15-16'
    },
    {
      'name': 'Ta-Ha',
      'ayah': '135',
      'meaning': 'Ta-Ha',
      'arabic': 'طه',
      'juz': '16'
    },
    {
      'name': 'Al-Anbiya',
      'ayah': '112',
      'meaning': 'Para Nabi',
      'arabic': 'الأنبياء',
      'juz': '16-17'
    },
    {
      'name': 'Al-Hajj',
      'ayah': '78',
      'meaning': 'Haji',
      'arabic': 'الحج',
      'juz': '17'
    },
    {
      'name': 'Al-Mu\'minun',
      'ayah': '118',
      'meaning': 'Orang-orang yang Beriman',
      'arabic': 'المؤمنون',
      'juz': '18'
    },
    {
      'name': 'An-Nur',
      'ayah': '64',
      'meaning': 'Cahaya',
      'arabic': 'النور',
      'juz': '18'
    },
    {
      'name': 'Al-Furqan',
      'ayah': '77',
      'meaning': 'Pembeda',
      'arabic': 'الفرقان',
      'juz': '18'
    },
    {
      'name': 'Ash-Shu\'ara',
      'ayah': '227',
      'meaning': 'Para Penyair',
      'arabic': 'الشعراء',
      'juz': '19'
    },
    {
      'name': 'An-Naml',
      'ayah': '93',
      'meaning': 'Semut',
      'arabic': 'النمل',
      'juz': '19'
    },
    {
      'name': 'Al-Qasas',
      'ayah': '88',
      'meaning': 'Kisah',
      'arabic': 'القصص',
      'juz': '19-20'
    },
    {
      'name': 'Al-Ankabut',
      'ayah': '69',
      'meaning': 'Laba-laba',
      'arabic': 'العنكبوت',
      'juz': '20'
    },
    {
      'name': 'Ar-Rum',
      'ayah': '60',
      'meaning': 'Romawi',
      'arabic': 'الروم',
      'juz': '21'
    },
    {
      'name': 'Luqman',
      'ayah': '34',
      'meaning': 'Luqman',
      'arabic': 'لقمان',
      'juz': '21'
    },
    {
      'name': 'As-Sajda',
      'ayah': '30',
      'meaning': 'Sujud',
      'arabic': 'السجدة',
      'juz': '21'
    },
    {
      'name': 'Al-Ahzab',
      'ayah': '73',
      'meaning': 'Golongan-golongan',
      'arabic': 'الأحزاب',
      'juz': '21-22'
    },
    {
      'name': 'Saba',
      'ayah': '54',
      'meaning': 'Sabak',
      'arabic': 'سبأ',
      'juz': '22'
    },
    {
      'name': 'Fatir',
      'ayah': '45',
      'meaning': 'Pencipta',
      'arabic': 'فاطر',
      'juz': '22'
    },
    {
      'name': 'Ya-Sin',
      'ayah': '83',
      'meaning': 'Ya-Sin',
      'arabic': 'يس',
      'juz': '22-23'
    },
    {
      'name': 'As-Saffat',
      'ayah': '182',
      'meaning': 'Barisan',
      'arabic': 'الصافات',
      'juz': '23'
    },
    {
      'name': 'Sad',
      'ayah': '88',
      'meaning': 'Huruf Sad',
      'arabic': 'ص',
      'juz': '23'
    },
    {
      'name': 'Az-Zumar',
      'ayah': '75',
      'meaning': 'Rombongan-rombongan',
      'arabic': 'الزمر',
      'juz': '23-24'
    },
    {
      'name': 'Ghafir',
      'ayah': '85',
      'meaning': 'Yang Mengampuni',
      'arabic': 'غافر',
      'juz': '24'
    },
    {
      'name': 'Fussilat',
      'ayah': '54',
      'meaning': 'Yang Dijelaskan',
      'arabic': 'فصلت',
      'juz': '24'
    },
    {
      'name': 'Ash-Shura',
      'ayah': '53',
      'meaning': 'Musyawarah',
      'arabic': 'الشورى',
      'juz': '24'
    },
    {
      'name': 'Az-Zukhruf',
      'ayah': '89',
      'meaning': 'Perhiasan',
      'arabic': 'الزخرف',
      'juz': '25'
    },
    {
      'name': 'Ad-Dukhan',
      'ayah': '59',
      'meaning': 'Asap',
      'arabic': 'الدخان',
      'juz': '25'
    },
    {
      'name': 'Al-Jathiya',
      'ayah': '37',
      'meaning': 'Berlutut',
      'arabic': 'الجاثية',
      'juz': '25'
    },
    {
      'name': 'Al-Ahqaf',
      'ayah': '35',
      'meaning': 'Dataran Pasir',
      'arabic': 'الأحقاف',
      'juz': '26'
    },
    {
      'name': 'Muhammad',
      'ayah': '38',
      'meaning': 'Nabi Muhammad',
      'arabic': 'محمد',
      'juz': '26'
    },
    {
      'name': 'Al-Fath',
      'ayah': '29',
      'meaning': 'Kemenangan',
      'arabic': 'الفتح',
      'juz': '26-27'
    },
    {
      'name': 'Al-Hujurat',
      'ayah': '18',
      'meaning': 'Kamar-kamar',
      'arabic': 'الحجرات',
      'juz': '26-27'
    },
    {'name': 'Qaf', 'ayah': '45', 'meaning': 'Qaf', 'arabic': 'ق', 'juz': '27'},
    {
      'name': 'Adh-Dhariyat',
      'ayah': '60',
      'meaning': 'Angin yang Menerbangkan',
      'arabic': 'الذاريات',
      'juz': '27'
    },
    {
      'name': 'At-Tur',
      'ayah': '49',
      'meaning': 'Gunung',
      'arabic': 'الطور',
      'juz': '27'
    },
    {
      'name': 'An-Najm',
      'ayah': '62',
      'meaning': 'Bintang',
      'arabic': 'النجم',
      'juz': '27'
    },
    {
      'name': 'Al-Qamar',
      'ayah': '55',
      'meaning': 'Bulan',
      'arabic': 'القمر',
      'juz': '28'
    },
    {
      'name': 'Ar-Rahman',
      'ayah': '78',
      'meaning': 'Yang Maha Pemurah',
      'arabic': 'الرحمن',
      'juz': '28'
    },
    {
      'name': 'Al-Waqi\'a',
      'ayah': '96',
      'meaning': 'Hari Kiamat',
      'arabic': 'الواقعة',
      'juz': '28-29'
    },
    {
      'name': 'Al-Hadid',
      'ayah': '29',
      'meaning': 'Besi',
      'arabic': 'الحديد',
      'juz': '29'
    },
    {
      'name': 'Al-Mujadila',
      'ayah': '22',
      'meaning': 'Perdebatan',
      'arabic': 'المجادلة',
      'juz': '29'
    },
    {
      'name': 'Al-Hashr',
      'ayah': '24',
      'meaning': 'Pengusiran',
      'arabic': 'الحشر',
      'juz': '29'
    },
    {
      'name': 'Al-Mumtahana',
      'ayah': '13',
      'meaning': 'Wanita yang Diuji',
      'arabic': 'الممتحنة',
      'juz': '29'
    },
    {
      'name': 'As-Saff',
      'ayah': '14',
      'meaning': 'Barisan',
      'arabic': 'الصف',
      'juz': '29'
    },
    {
      'name': 'Al-Jumu\'ah',
      'ayah': '11',
      'meaning': 'Hari Jum\'at',
      'arabic': 'الجمعة',
      'juz': '29'
    },
    {
      'name': 'Al-Munafiqun',
      'ayah': '11',
      'meaning': 'Orang-orang Munafik',
      'arabic': 'المنافقون',
      'juz': '29-30'
    },
    {
      'name': 'At-Taghabun',
      'ayah': '18',
      'meaning': 'Hari Penipuan',
      'arabic': 'التغابن',
      'juz': '30'
    },
    {
      'name': 'At-Talaq',
      'ayah': '12',
      'meaning': 'Perceraian',
      'arabic': 'الطلاق',
      'juz': '30'
    },
    {
      'name': 'At-Tahrim',
      'ayah': '12',
      'meaning': 'Larangan',
      'arabic': 'التحريم',
      'juz': '30'
    },
    {
      'name': 'Al-Mulk',
      'ayah': '30',
      'meaning': 'Kerajaan',
      'arabic': 'الملك',
      'juz': '29-30'
    },
    {
      'name': 'Al-Qalam',
      'ayah': '52',
      'meaning': 'Pena',
      'arabic': 'القلم',
      'juz': '29-30'
    },
    {
      'name': 'Al-Haaqqa',
      'ayah': '29',
      'meaning': 'Hari Kiamat',
      'arabic': 'الحاقة',
      'juz': '29-30'
    },
    {
      'name': 'Al-Maarij',
      'ayah': '44',
      'meaning': 'Tangga',
      'arabic': 'المعارج',
      'juz': '30'
    },
    {
      'name': 'Nuh',
      'ayah': '28',
      'meaning': 'Nabi Nuh',
      'arabic': 'نوح',
      'juz': '30'
    },
    {
      'name': 'Al-Jinn',
      'ayah': '28',
      'meaning': 'Jin',
      'arabic': 'الجن',
      'juz': '30'
    },
    {
      'name': 'Al-Muzzammil',
      'ayah': '20',
      'meaning': 'Orang yang Dilapisi',
      'arabic': 'المزمل',
      'juz': '30'
    },
    {
      'name': 'Al-Muddaththir',
      'ayah': '56',
      'meaning': 'Orang yang Membungkus',
      'arabic': 'المزمل',
      'juz': '30'
    },
    {
      'name': 'Al-Qiyama',
      'ayah': '40',
      'meaning': 'Hari Kebangkitan',
      'arabic': 'القيامة',
      'juz': '30'
    },
    {
      'name': 'Al-Insan',
      'ayah': '31',
      'meaning': 'Manusia',
      'arabic': 'الإنسان',
      'juz': '30'
    },
    {
      'name': 'Al-Mursalat',
      'ayah': '50',
      'meaning': 'Malaikat yang Dikirim',
      'arabic': 'المرسلات',
      'juz': '30'
    },
    {
      'name': 'An-Naba',
      'ayah': '40',
      'meaning': 'Berita Besar',
      'arabic': 'النبأ',
      'juz': '30'
    },
    {
      'name': 'An-Nazi\'at',
      'ayah': '46',
      'meaning': 'Yang Mencabut',
      'arabic': 'النازعات',
      'juz': '30'
    },
    {
      'name': 'Abasa',
      'ayah': '42',
      'meaning': 'Dia Bermuka Masam',
      'arabic': 'عبس',
      'juz': '30'
    },
    {
      'name': 'At-Takwir',
      'ayah': '29',
      'meaning': 'Menggulung',
      'arabic': 'التكوير',
      'juz': '30'
    },
    {
      'name': 'Al-Infitar',
      'ayah': '19',
      'meaning': 'Memisahkan',
      'arabic': 'الانفطار',
      'juz': '30'
    },
    {
      'name': 'Al-Mutaffifin',
      'ayah': '36',
      'meaning': 'Penipu',
      'arabic': 'المطففين',
      'juz': '30'
    },
    {
      'name': 'Al-Inshiqaq',
      'ayah': '25',
      'meaning': 'Terbelah',
      'arabic': 'الانشقاق',
      'juz': '30'
    },
    {
      'name': 'Al-Burooj',
      'ayah': '22',
      'meaning': 'Gugusan Bintang',
      'arabic': 'البروج',
      'juz': '30'
    },
    {
      'name': 'At-Tariq',
      'ayah': '17',
      'meaning': 'Bintang Pagi',
      'arabic': 'الطارق',
      'juz': '30'
    },
    {
      'name': 'Al-A\'la',
      'ayah': '19',
      'meaning': 'Yang Paling Tinggi',
      'arabic': 'الأعلى',
      'juz': '30'
    },
    {
      'name': 'Al-Ghashiya',
      'ayah': '26',
      'meaning': 'Hari Pembalasan',
      'arabic': 'الغاشية',
      'juz': '30'
    },
    {
      'name': 'Al-Fajr',
      'ayah': '30',
      'meaning': 'Fajar',
      'arabic': 'الفجر',
      'juz': '30'
    },
    {
      'name': 'Al-Balad',
      'ayah': '20',
      'meaning': 'Kota',
      'arabic': 'البلد',
      'juz': '30'
    },
    {
      'name': 'Ash-Shams',
      'ayah': '15',
      'meaning': 'Matahari',
      'arabic': 'الشمس',
      'juz': '30'
    },
    {
      'name': 'Al-Lail',
      'ayah': '21',
      'meaning': 'Malam',
      'arabic': 'الليل',
      'juz': '30'
    },
    {
      'name': 'Ad-Duha',
      'ayah': '11',
      'meaning': 'Waktu Siang',
      'arabic': 'الضحى',
      'juz': '30'
    },
    {
      'name': 'Al-Inshirah',
      'ayah': '8',
      'meaning': 'Pembukaan',
      'arabic': 'الشرح',
      'juz': '30'
    },
    {
      'name': 'At-Tin',
      'ayah': '8',
      'meaning': 'Buah Tin',
      'arabic': 'التين',
      'juz': '30'
    },
    {
      'name': 'Al-Alaq',
      'ayah': '19',
      'meaning': 'Gumpalan Darah',
      'arabic': 'العلق',
      'juz': '30'
    },
    {
      'name': 'Al-Qadr',
      'ayah': '5',
      'meaning': 'Kemuliaan',
      'arabic': 'القدر',
      'juz': '30'
    },
    {
      'name': 'Al-Bayinah',
      'ayah': '8',
      'meaning': 'Bukti yang Jelas',
      'arabic': 'البينة',
      'juz': '30'
    },
    {
      'name': 'Az-Zalzalah',
      'ayah': '8',
      'meaning': 'Gemetar',
      'arabic': 'الزلزلة',
      'juz': '30'
    },
    {
      'name': 'Al-Adiyat',
      'ayah': '11',
      'meaning': 'Kuda Perang',
      'arabic': 'العاديات',
      'juz': '30'
    },
    {
      'name': 'Al-Qari\'a',
      'ayah': '11',
      'meaning': 'Hari Kiamat',
      'arabic': 'القارعة',
      'juz': '30'
    },
    {
      'name': 'At-Takatsur',
      'ayah': '8',
      'meaning': 'Bermegah-megah',
      'arabic': 'التكاثر',
      'juz': '30'
    },
    {
      'name': 'Al-Asr',
      'ayah': '3',
      'meaning': 'Waktu',
      'arabic': 'العصر',
      'juz': '30'
    },
    {
      'name': 'Al-Humazah',
      'ayah': '9',
      'meaning': 'Pengumpat',
      'arabic': 'الهمزة',
      'juz': '30'
    },
    {
      'name': 'Al-Fil',
      'ayah': '5',
      'meaning': 'Gajah',
      'arabic': 'الفيل',
      'juz': '30'
    },
    {
      'name': 'Quraisy',
      'ayah': '4',
      'meaning': 'Suku Quraisy',
      'arabic': 'قريش',
      'juz': '30'
    },
    {
      'name': 'Al-Ma\'un',
      'ayah': '7',
      'meaning': 'Barang-barang Kecil',
      'arabic': 'الماعون',
      'juz': '30'
    },
    {
      'name': 'Al-Kautsar',
      'ayah': '3',
      'meaning': 'Sungai yang Berlimpah',
      'arabic': 'الكوثر',
      'juz': '30'
    },
    {
      'name': 'Al-Kafirun',
      'ayah': '6',
      'meaning': 'Orang-orang Kafir',
      'arabic': 'الكافرون',
      'juz': '30'
    },
    {
      'name': 'An-Nasr',
      'ayah': '3',
      'meaning': 'Pertolongan',
      'arabic': 'النصر',
      'juz': '30'
    },
    {
      'name': 'Al-Masad',
      'ayah': '5',
      'meaning': 'Kain',
      'arabic': 'المسد',
      'juz': '30'
    },
    {
      'name': 'Al-Ikhlas',
      'ayah': '4',
      'meaning': 'Ketulusan',
      'arabic': 'الإخلاص',
      'juz': '30'
    },
    {
      'name': 'Al-Falaq',
      'ayah': '5',
      'meaning': 'Fajar',
      'arabic': 'الفلق',
      'juz': '30'
    },
    {
      'name': 'An-Nas',
      'ayah': '6',
      'meaning': 'Manusia',
      'arabic': 'الناس',
      'juz': '30'
    },
  ];

  // Function to show the floating menu
  @override
  String _searchQuery = '';

  void initState() {
    super.initState();

    // Delay 3 seconds before showing the modal
    Future.delayed(const Duration(seconds: 3), () {
      _showCustomModal(context); // Show modal after 3 seconds
    });
  }

  // Function to show the floating menu
  void _showFloatingMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: 1, // Distance from top of the screen
              left: 1, // Distance from left of the screen
              child: Material(
                color: Colors.transparent, // Background transparency
                child: Container(
                  width: 200, // Adjust menu width
                  decoration: BoxDecoration(
                    color: const Color(0xFF3D3B40),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading:
                            const Icon(Icons.people_alt, color: Colors.blue),
                        title: const Text('Account',
                            style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          Get.to(() => const SettingsView());
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.notifications, color: Colors.blue),
                        title: const Text('Notifikasi',
                            style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          Get.to(() => const NotifikasiView());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings, color: Colors.blue),
                        title: const Text('Setting',
                            style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          Get.to(() => const SettingsView());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.blue),
                        title: const Text('Log Out',
                            style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          Get.to(() => const SigninView());
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.arrow_back, color: Colors.blue),
                        title: const Text('Keluar',
                            style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          Get.to(() => const HomeView());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showSearchMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: const Color(0xFF3D3B40),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    autofocus: true,
                    style: const TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      hintText: 'Search Surah...',
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value; // Update the search query state
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: surahList.length, // Total items in your list
                      itemBuilder: (context, index) {
                        var surah = surahList[index];
                        // Check if the Surah name matches the search query
                        if (surah['name']!
                            .toLowerCase()
                            .contains(_searchQuery.toLowerCase())) {
                          return ListTile(
                            title: Text(surah['name']!,
                                style: const TextStyle(color: Colors.white)),
                            subtitle: Text(
                              '${surah['ayah']} Ayat (${surah['meaning']!})',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            trailing: Text(surah['arabic']!,
                                style: const TextStyle(color: Colors.white)),
                            onTap: () {
                              // Handle surah selection tap
                              Navigator.pop(context); // Close search menu
                              // Add navigation or action here
                            },
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  // Function to show the custom modal after 3 seconds
  void _showCustomModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor:
          const Color(0xFF2E2C35), // Background color from the image
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjust to content size
            children: [
              const SizedBox(height: 10),
              const Text(
                'Jangan Pernah Melewatkan Jamaah!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF6A71E5), // Blue color for title text
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Tetap dekat dengan Allah setiap saat\n dengan mengaktifkan notifikasi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54, // Subtitle text color
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF636BFB), // Blue button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded button
                  ),
                ),
                onPressed: () {
                  // Aksi untuk tombol "Aktifkan Notifikasi"
                  Get.to(() => const SettingsView());
                  print("Aktifkan Notifikasi ditekan");
                  // Anda bisa menambahkan logika lain di sini
                  Navigator.pop(context); // Menutup modal setelah ditekan
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                  child: Text(
                    'Aktifkan Notifikasi',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // White text color for the button
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Aksi untuk tombol "Tidak Sekarang"
                  print("Tidak Sekarang ditekan");
                  Navigator.pop(context); // Menutup modal setelah ditekan
                },
                child: const Text(
                  'Tidak Sekarang',
                  style: TextStyle(
                    color: Colors.white54, // Text color for "Tidak Sekarang"
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFF525CEB)),
          onPressed: () {
            _showFloatingMenu(
                context); // Show floating menu when menu is clicked
          },
        ),
        backgroundColor: const Color(0xFF1C1C1E),
        elevation: 0,
        title: const Text(
          'Quranku',
          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFF525CEB)),
            onPressed: () {
              _showSearchMenu(
                  context); // Use the same or similar method for search
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Asalamualaikum !!!',
              style: TextStyle(fontSize: 18, color: Colors.white54),
            ),
            const SizedBox(height: 5),
            const Text(
              'Zulkifli A. Patuti',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Action when the "Terakhir Membaca" section is tapped
                Get.to(
                    () => const SurahView()); // Navigate to your desired view
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Terakhir Membaca',
                          style: TextStyle(color: Colors.white54),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Al-Fatihah',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Juz 1 Ayat 1\nHalaman 1',
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // Action when the book icon is tapped
                        Get.to(() =>
                            const SurahView()); // Navigate to your desired view
                      },
                      child: const Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Surat',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Divider(color: Colors.blueAccent, thickness: 2),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: surahList.length,
              itemBuilder: (BuildContext context, int index) {
                var surah = surahList[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(surah['name']!,
                          style: const TextStyle(color: Colors.white)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${surah['ayah']} Ayat (${surah['meaning']!})',
                              style: const TextStyle(color: Colors.white54)),
                          Text('Juz: ${surah['juz']!}',
                              style: const TextStyle(color: Colors.white54)),
                        ],
                      ),
                      trailing: Text(surah['arabic']!,
                          style: const TextStyle(color: Colors.white)),
                      onTap: () {
                        // Action when the surat is clicked
                      },
                    ),
                    const Divider(
                      color: Colors.blueAccent,
                      thickness: 2,
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C1C1E),
        selectedItemColor: const Color(0xFF525CEB),
        unselectedItemColor: Colors.white,
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
            Get.to(() => const BookmarkView());
          } else if (index == 2) {
            Get.to(() => const ScheduleView());
          }
        },
      ),
    );
  }
}

// Main function to run the app
void main() {
  runApp(const GetMaterialApp(home: DashboardView()));
}
