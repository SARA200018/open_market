import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/module/sign_in/sign_in_screen.dart';

import '../../../Helper/color_helper.dart';
import '../../../widgets/components/components.dart';
import 'forget_password_controller.dart';

class ForgetPasswordScreen extends StatelessWidget {
   ForgetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<forgetPassController>(builder: (controller)=>Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Form(
            key: controller.forgetPassFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Forget',style: _styleTitle(),),
                Text('Password ?',style: _styleTitle()),
                SizedBox(height: 30.h,),
                Text('Mobile Or Email',style: _styleHint(),),
                SizedBox(height: 15.h,),
                textFormFailed(
                    hintText: '11111111',
                    keyboardType: TextInputType.text,
                    textEditingController: controller.emailController,
                    prefixIcon: Icons.phone,
                    prefixIconColor: ColorManager.primaryOrange,
                            validator: (value) {
                              controller.validateEmail(value!);
                            }

                ),
                SizedBox(height: 50,),
                D_MaterialButton(
                    width: double.infinity,
                    color: ColorManager.primaryOrange,
                    colorBorder: ColorManager.primaryOrange,
                    onPressed: (){
                      controller.checkSend();
                      Get.off(SignInScreen());
                    }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(ImageManager.sendIcon),
                    SizedBox(width: 15.w,),
                    Text('Send',style: _styleTxtBtn(ColorManager.white),)
                  ],
                )
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
  AppBar customAppBar(){
    return AppBar(
      title: Center(
        child: Text(
            'Public market',
            style: TextStyle(
                color: ColorManager.primaryOrange
            ),textAlign: TextAlign.center
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),),
    );
  }
  TextStyle _styleTitle(){
    return TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 26
    );
  }

  TextStyle _styleHint(){
    return TextStyle(
        fontSize: 16,
        color: ColorManager.greyBorder
    );
  }

  TextStyle _styleTxtBtn(Color color){
    return TextStyle(
        fontSize: 18,
        color: color
    );
  }
}
