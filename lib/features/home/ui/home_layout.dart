import 'home_screen.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/features/record/ui/record_screen.dart';
import 'package:waratel_app/features/schedule/ui/schedule_screen.dart';
import 'package:waratel_app/features/ratings/ui/ratings_screen.dart';
import 'package:waratel_app/features/notifications/ui/notifications_screen.dart';
import 'widgets/placeholder_tabs.dart' hide RecordScreen, ScheduleScreen, RatingsScreen, NotificationsScreen;

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0; // Start at Home (Index 0 in RTL)

  final List<Widget> _screens = [
    const HomeScreen(), // 0: الرئيسية (Rightmost)
    const RecordScreen(), // 1: السجل
    const ScheduleScreen(), // 2: الجدول
    const RatingsScreen(), // 3: التقييمات
    const NotificationsScreen(), // 4: التنبيهات (Leftmost)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      drawer: const CustomDrawer(),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsManager.primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
          unselectedLabelStyle: TextStyle(fontSize: 12.sp),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_in_talk_outlined),
              activeIcon: Icon(Icons.phone_in_talk),
              label: 'السجل',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              activeIcon: Icon(Icons.menu_book),
              label: 'الجدول',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_outline),
              activeIcon: Icon(Icons.star),
              label: 'التقييمات',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                  label: Text('62'), child: Icon(Icons.notifications_outlined)),
              activeIcon:
                  Badge(label: Text('62'), child: Icon(Icons.notifications)),
              label: 'التنبيهات',
            ),
          ],
        ),
      ),
    );
  }
}
