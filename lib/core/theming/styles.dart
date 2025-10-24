import 'package:clean_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// يُفترض أن هناك مكتبة أو ملف 'responsive_size_extension.dart'
// يقوم بتعريف الامتداد .sp (Scaled Pixel) لضبط حجم الخط
// بناءً على حجم الشاشة (وهي ممارسة شائعة في Flutter).

class TextStyles {
  // 1. نمط نص بحجم 24، لون أسود، ووزن خط (Weight) 700
  static TextStyle font24Black700Weight = TextStyle(
    // يجب استبدال .sp بحجم رقمي عادي إذا لم يكن لديك امتداد (Extension) لحجم الخط
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black, // تم استبدال 'Colors.black' بالصيغة الصحيحة
  );

  // 2. نمط نص بحجم 32، لون أزرق، ووزن خط Bold (عريض)
  static TextStyle font32BlueBold = TextStyle(
    // يجب استبدال .sp بحجم رقمي عادي إذا لم يكن لديك امتداد (Extension) لحجم الخط
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    // تم استخدام اسم متغير افتراضي للون 'ColorsManager.mainBlue'
    color: ColorsManager
        .minBlue, // يُرجى استبدال 'Colors.blue' بالمتغير الصحيح لديك
  );
  static TextStyle font16greRegular = TextStyle(
    // يجب استبدال .sp بحجم رقمي عادي إذا لم يكن لديك امتداد (Extension) لحجم الخط
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    // تم استخدام اسم متغير افتراضي للون 'ColorsManager.mainBlue'
    color: ColorsManager
        .minBlue, // يُرجى استبدال 'Colors.blue' بالمتغير الصحيح لديك
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    // يجب استبدال .sp بحجم رقمي عادي إذا لم يكن لديك امتداد (Extension) لحجم الخط
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    // تم استخدام اسم متغير افتراضي للون 'ColorsManager.mainBlue'
    color: Colors.white, // يُرجى استبدال 'Colors.blue' بالمتغير الصحيح لديك
  );
}

// مثال على كيفية الاستخدام في Widget:
// Text(
//   'Hello World',
//   style: TextStyles.font32BlueBold,
// );
