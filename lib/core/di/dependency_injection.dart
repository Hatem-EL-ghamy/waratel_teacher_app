import 'package:get_it/get_it.dart';
import '../cache/shared_preferences.dart';

/// GetIt instance للـ Dependency Injection
final getIt = GetIt.instance;

/// إعداد جميع الـ Dependencies
Future<void> setupGetIt() async {
  // تهيئة SharedPreferences
  await SharedPreferencesService.init();

  // ========== تسجيل الخدمات ==========
  
  // مثال: تسجيل خدمة API
  // getIt.registerLazySingleton<ApiService>(() => ApiService());

  // ========== تسجيل الـ Repositories ==========
  
  // مثال: تسجيل Repository
  // getIt.registerLazySingleton<AuthRepository>(
  //   () => AuthRepository(getIt<ApiService>()),
  // );

  // ========== تسجيل الـ Cubits/Blocs ==========
  
  // مثال: تسجيل Cubit
  // getIt.registerFactory<LoginCubit>(
  //   () => LoginCubit(getIt<AuthRepository>()),
  // );
}
