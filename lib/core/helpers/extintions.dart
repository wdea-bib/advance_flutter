import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  // 1. التنقل إلى شاشة جديدة باستخدام اسمها (Named Route)
  // يسمح بالرجوع للشاشة الحالية
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  // 2. التنقل إلى شاشة جديدة واستبدال الشاشة الحالية بها
  // لا يسمح بالرجوع للشاشة السابقة (تُستخدم لتسجيل الدخول/الخروج)
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  // 3. التنقل إلى شاشة جديدة وحذف جميع الشاشات السابقة حتى تحقيق شرط معين
  // 'predicate' هي الدالة التي تحدد متى يتوقف الحذف (غالباً ما تكون (route) => false)
  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName,
    Object? arguments,
    RoutePredicate predicate,
  ) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  // 4. الرجوع إلى الشاشة السابقة
  void pop() => Navigator.of(this).pop();
}
