import 'package:clean_app/core/theming/styles.dart';
import 'package:clean_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:clean_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:clean_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 30.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Text(
                          'Manage and schdsd all your medice app smsnsn with DoCdo to get a new expretines',
                          style: TextStyles.font16greRegular,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.h),
                        GetStartedButtin(),
                        SizedBox(height: 30.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
