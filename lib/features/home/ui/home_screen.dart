import 'widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'widgets/recent_calls_list.dart';
import 'widgets/dashboard_stats_card.dart';
import '../../../../core/theming/colors.dart';
 
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: DashboardStatsCard(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'المكالمات الناجحة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.textPrimaryColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const RecentCallsList(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
