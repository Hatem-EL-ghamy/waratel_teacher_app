import 'routers.dart';
import 'package:flutter/material.dart';
import '../../features/login/ui/screens/login_screen.dart';
 import 'package:waratel_app/features/splash/ui/splash_screen.dart';
import '../../features/home/ui/home_layout.dart';
import '../../features/achievement_plan/ui/achievement_plan_screen.dart';
import '../../features/profile/ui/profile_screen.dart';
import '../../features/schedule/ui/add_appointment_screen.dart';


/// إدارة التوجيه في التطبيق
class AppRouter {
  /// توليد المسارات
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeLayout(),
        );

      case Routes.achievementPlan:
        return MaterialPageRoute(
          builder: (_) => const AchievementPlanScreen(),
        );

      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      case Routes.addAppointment:
        return MaterialPageRoute(
          builder: (_) => const AddAppointmentScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('الصفحة غير موجودة: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
