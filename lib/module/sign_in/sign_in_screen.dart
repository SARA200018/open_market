import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/module/sign_in/sign_in_controller.dart';
import 'package:open_market_project/widgets/components/components.dart';

class SignInScreen extends StatelessWidget {
SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        builder:(controller)=>
     Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: controller.loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                            'Public market',
                            style: TextStyle(
                              color: ColorManager.primaryOrange,
                              fontSize: 20,
                            ),textAlign: TextAlign.center
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Text('Sign in',style: _styleTitle(),),
                      Text('to your account !',style: _styleTitle()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h,),
                          Text('Mobile Or Email',style: _styleHint(),),
                          SizedBox(height: 10.h,),
                          textFormFailed(
                              keyboardType: TextInputType.emailAddress,
                              textEditingController: controller.emailController,
                              onSaved: (value){
                                controller.email = value!;
                              },
                              validator: (value){
                                controller.validateEmail(value!);
                              },
                              hintText: 'Email',
                              prefixIcon: Icons.email_outlined,
                              prefixIconColor: ColorManager.primaryOrange,


                          ),
                          SizedBox(height: 10.h,),
                          Text('Password',style: _styleHint(),),
                          SizedBox(height: 10.h,),
                          Obx(() =>textFormFailed(
                            hintText: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            textEditingController: controller.passwordController,
                            prefixIcon: Icons.lock_outline,
                            prefixIconColor: ColorManager.primaryOrange,
                            suffixIcon: InkWell(
                              onTap: (){
                              controller.isPasswordVisible.value =! controller.isPasswordVisible.value;
                              },
                              child: Icon(
                            controller.isPasswordVisible.value?Icons.remove_red_eye:Icons.visibility_off,color: ColorManager.primaryOrange)
                                      ),
                            validator: (value){
                            controller.validatePassword(value!);
                                      },
                            onSaved: (value){},
                            isobscureText: controller.isPasswordVisible.value
                          )),
                          SizedBox(height: 30.h,),
                          Center(child: GestureDetector(
                            onTap: (){
                              Get.toNamed('/forgetPass');
                            },
                            child: Text('Forgot Password  ?',style: TextStyle(
                              color: ColorManager.primaryBlue,
                              fontSize: 13
                            ),),
                          )),
                          SizedBox(height: 30.h,),
                          D_MaterialButton(
                            width: double.infinity,
                            color: ColorManager.primaryOrange,
                            colorBorder: ColorManager.primaryOrange,
                            onPressed: (){
                              Get.toNamed('/layout');
                            }, child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(ImageManager.nextIcon),
                              SizedBox(width: 15.w,),
                              Text('Sign In',style: _styleTxtBtn(ColorManager.white),)
                            ],
                          )),
                          SizedBox(height: 20.h,),
                          D_MaterialButton(
                              width: double.infinity,
                              onPressed: (){
                                  Get.toNamed('signUp');
                              }, child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person,color: ColorManager.greyBorder,),
                              SizedBox(width: 15.w,),
                              Text('Register',style: _styleTxtBtn(ColorManager.greyBorder),)
                            ],
                          ))
                        ],
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
