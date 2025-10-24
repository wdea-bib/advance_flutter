import 'package:clean_app/core/helpers/extintions.dart';
import 'package:clean_app/core/routing/routes.dart';
import 'package:clean_app/core/theming/colors.dart';
import 'package:clean_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButtin extends StatelessWidget {
  const GetStartedButtin({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.minBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
    // return TextButton(
    //   onPressed: () {},
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(ColorsManager.minBlue),
    //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //     minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
    //     shape: MaterialStateProperty.all(
    //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    //     ),
    //   ),
    //   child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    // );
  }
}
