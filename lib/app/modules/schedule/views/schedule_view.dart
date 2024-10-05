import 'package:quranku/app/modules/bookmark/views/bookmark_view.dart';
import 'package:quranku/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  final List<Map<String, String>> prayerTimes = [
    {'name': 'Subuh', 'time': '03:56'},
    {'name': 'Zuhur', 'time': '11:19'},
    {'name': 'Ashar', 'time': '14:28'},
    {'name': 'Maghrib', 'time': '17:24'},
    {'name': 'Isya', 'time': '18:34'},
  ];

  List<Map<String, String>> filteredPrayerTimes = [];

  @override
  void initState() {
    super.initState();
    filteredPrayerTimes = prayerTimes; // Initially display all prayer times
  }

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
        title: const Text('Prayer',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C1E),
      ),
      body: Column(
        children: [
          // Calendar widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
                leftChevronIcon:
                    Icon(Icons.chevron_left, color: Color(0xFF525CEB)),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Color(0xFF525CEB)),
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.red),
                weekdayStyle: TextStyle(color: Colors.white),
              ),
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
                defaultTextStyle: TextStyle(color: Colors.white),
                weekendTextStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          // Prayer times section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                // Display filtered prayer times
                ...filteredPrayerTimes.map((prayer) {
                  return _buildPrayerTime(
                    prayer['name']!,
                    Colors.blue,
                    prayer['time']!,
                    Colors.white,
                  );
                }),
              ],
            ),
          ),
          // Direction and location
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Direction',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Row(
                  children: [
                    const Text(
                      'Malang',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.navigation, color: Colors.blue),
                      onPressed: () {
                        // Handle direction button
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C1C1E),
        selectedItemColor: const Color(0xFF525CEB),
        unselectedItemColor: Colors.white,
        currentIndex: 2, // Set Schedule as the selected icon by default
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
          if (index == 2) {
            // Stay on ScheduleView
          } else if (index == 0) {
            Get.to(() => const DashboardView());
          } else if (index == 1) {
            Get.to(() => const BookmarkView());
          }
        },
      ),
      backgroundColor: const Color(0xFF1C1C1E),
    );
  }

  Widget _buildPrayerTime(
    String prayer,
    Color prayerColor,
    String time,
    Color timeColor,
  ) {
    return Row(
      children: [
        Text(
          prayer,
          style: TextStyle(color: prayerColor, fontSize: 16),
        ),
        const SizedBox(width: 16),
        Text(
          time,
          style: TextStyle(color: timeColor, fontSize: 16),
        ),
      ],
    );
  }
}

void main() {
  runApp(const GetMaterialApp(home: ScheduleView()));
}
