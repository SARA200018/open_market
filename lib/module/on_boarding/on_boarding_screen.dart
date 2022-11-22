import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/app/app_router/app_router.dart';
import 'package:open_market_project/widgets/components/components.dart';
import '../../Helper/image_helper.dart';

class onBoardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: ColorManager.primaryBlue,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        child: Text('Skip',style: styleSkip(),),
                        onPressed: (){
                          Get.offAllNamed(Routes.signInRoute);
                        },),
                      SizedBox(height: 30.h,),
                      SvgPicture.asset(ImageManager.skipImage,height: 400,width: 340,),
                      Spacer(),
                      Center(
                        child: D_MaterialButton(
                          color: ColorManager.primaryOrange,
                          colorBorder: ColorManager.primaryOrange,
                          width: 187.w,
                            onPressed: (){

                            },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Start now',style: styleTxtBtn(),),
                            SizedBox(width: 10,),
                            SvgPicture.asset(ImageManager.nowIcon),
                          ],
                        )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
  }

  TextStyle styleSkip(){
    return TextStyle(
        color: Colors.white,
        fontSize: 21,
        decoration: TextDecoration.underline
    );
  }
  TextStyle styleTxtBtn(){
    return TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold
    );
  }


}
