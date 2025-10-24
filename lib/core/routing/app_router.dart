import 'package:clean_app/core/routing/routes.dart';
import 'package:clean_app/features/login/ui/widgets/login_screen.dart';
import 'package:clean_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // يجب تعريف الكلاس Routes في مكان آخر لتضمين أسماء المسارات
  // مثال:
  // class Routes {
  //   static const onBoardingScreen = '/';
  //   static const loginScreen = '/login';
  // }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          // يُرجى استبدال Placeholder() بـ (اسم الشاشة)
          builder: (_) => OnBoardingScreen(),
        ); // MaterialPageRoute

      case Routes.loginScreen:
        return MaterialPageRoute(
          // يُرجى استبدال Placeholder() بـ (اسم شاشة تسجيل الدخول)
          builder: (_) => const LoginScreen(),
        ); // MaterialPageRoute

      default:
        // المسار الافتراضي: يتم عرضه عندما يكون المسار المطلوب غير موجود
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ), // Center
          ), // Scaffold
        ); // MaterialPageRoute
    }
  }
}
