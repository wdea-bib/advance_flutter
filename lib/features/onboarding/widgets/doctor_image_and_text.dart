// import 'package:clean_app/core/theming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class DoctorImageAndText extends StatelessWidget {
//   const DoctorImageAndText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(

//       children: [

//         SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
//         Container(

//           foregroundDecoration: BoxDecoration(
//             gradient: LinearGradient(

//               // ignore: deprecated_member_use
//               colors: [Colors.white, Colors.white.withOpacity(0.0)],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               stops: [0.14, 0.4],
//             ),
//           ),
//           child: Image.asset('assets/images/onboarding_doctor.png'),
//         ),
//         Positioned(

//           bottom: 30,
//           left: 0,
//           right: 0,
//           child: Text(
//             "Rest Doctor\nApppointment App",
//             style: TextStyles.font32BlueBold.copyWith(height: 1),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:clean_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // الخلفية بالشعار
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),

        // صورة الطبيب مع التدرج اللوني
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              // colors: [Colors.white, Colors.white.withOpacity(0.0)],
              // استبدال Colors.white.withOpacity(0.0) بـ Colors.white.withAlpha(0)
              colors: [Colors.white, Colors.white.withAlpha(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),

        // النص في الأسفل
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            // **تم تصحيح النص**
            "Best Doctor\nAppointment App",
            // **الحل:** إضافة textAlign: TextAlign.center
            textAlign: TextAlign.center, // ⬅️ هذا هو التصحيح الرئيسي
            style: TextStyles.font32BlueBold.copyWith(height: 1),
          ),
        ),
      ],
    );
  }
}
