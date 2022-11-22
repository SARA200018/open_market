import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';
import '../../../../../Helper/color_helper.dart';
import '../../../../../widgets/components/components.dart';
import 'change_password_controller.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePassController>(builder: (controller)=>Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar('Change Password', context, ColorManager.primaryBlue),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: controller.changePassFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('LOGO',style: TextStyle(
                        color: ColorManager.primaryBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 30.h,),
                  Text('Old Password',style: _styleHint(),),
                  SizedBox(height: 15.h,),
                  textFormFailed(
                      hintText: 'Enter your password',
                      keyboardType: TextInputType.visiblePassword,
                      textEditingController: controller.oldpassController,
                      prefixIcon: Icons.lock,
                      prefixIconColor: ColorManager.primaryOrange,
                              validator: (value) {

                              }

                  ),
                  SizedBox(height: 20,),
                  Text(' New Password',style: _styleHint(),),
                  SizedBox(height: 15.h,),
                  textFormFailed(
                      hintText: 'Enter your password',
                      keyboardType: TextInputType.visiblePassword,
                      textEditingController: controller.oldpassController,
                      prefixIcon: Icons.lock,
                      prefixIconColor: ColorManager.primaryOrange,
                      validator: (value) {

                      }

                  ),

                  SizedBox(height: 20,),
                  Text(' New Password',style: _styleHint(),),
                  SizedBox(height: 15.h,),
                  textFormFailed(
                      hintText: 'Enter your password',
                      keyboardType: TextInputType.visiblePassword,
                      textEditingController: controller.oldpassController,
                      prefixIcon: Icons.lock,
                      prefixIconColor: ColorManager.primaryOrange,
                      validator: (value) {

                      }

                  ),

                  SizedBox(height: 30,),
                  D_MaterialButton(
                      width: double.infinity,
                      color: ColorManager.primaryOrange,
                      colorBorder: ColorManager.primaryOrange,
                      onPressed: (){
                        Navigator.pop(context);
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
      ),
    ));
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
