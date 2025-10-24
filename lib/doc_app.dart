import 'package:clean_app/core/routing/app_router.dart';
import 'package:clean_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // يُفترض استيراد هذه المكتبة

// يجب استيراد كلاس AppRouter وكلاس ColorsManager وكلاس Routes

class DocApp extends StatelessWidget {
  // خاصية (Property) لاستقبال كلاس التوجيه (Router) الذي تم تعريفه سابقاً
  final AppRouter appRouter;

  // Constructor يتطلب تمرير AppRouter عند إنشاء التطبيق
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    // ScreenUtilInit: أداة شائعة لضبط أحجام العناصر والنصوص
    // لتناسب مختلف أحجام الشاشات (Responsive Design)
    return ScreenUtilInit(
      // designSize: حجم التصميم القياسي الذي تم بناء الـ UI عليه (iPhone X تقريباً)
      designSize: const Size(375, 812),
      // minTextAdapt: يسمح بضبط حجم النص ليتناسب مع الشاشة
      minTextAdapt: true,

      child: MaterialApp(
        title: 'Doc App',

        // Theme: تعريف الثيم العام للتطبيق (الألوان الأساسية والخلفية)
        theme: ThemeData(
          // primaryColor: اللون الأساسي للتطبيق
          // (يُرجى استبدال ColorsManager.mainBlue بقيمة لون حقيقية إذا لم يكن لديك هذا الكلاس)
          primaryColor: Colors.blue,
          // scaffoldBackgroundColor: لون خلفية جميع الشاشات
          scaffoldBackgroundColor: Colors.white,
        ), // ThemeData
        // إخفاء الشريط الأحمر الصغير الذي يظهر في وضع التطوير
        debugShowCheckedModeBanner: false,

        // initialRoute: تحديد المسار الذي سيبدأ منه التطبيق
        // (يُرجى استبدال  بالمسار الفعلي مثل '/')
        initialRoute: Routes.onBoardingScreen,

        // onGenerateRoute: دالة التوجيه الرئيسية التي تعالج جميع التنقلات بالاسم
        // يتم ربطها بالدالة generateRoute في كلاس AppRouter
        onGenerateRoute: appRouter.generateRoute,
      ), // MaterialApp
    ); // ScreenUtilInit
  }
}
