import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/module/splash/splash_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetBuilder<SplashController>(
            builder: (controller) => Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(child: Center(child: Text('LOGO',style: TextStyle(
                        color: ColorManager.primaryBlue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),))),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset(ImageManager.splashImage))
                    ],
                  ),
                )
        )
    );
  }
}
