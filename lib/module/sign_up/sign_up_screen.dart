import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/module/sign_up/sign_up_controller.dart';
import 'package:open_market_project/widgets/components/components.dart';

class SignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        builder:(controller)=>
            Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: controller.registerFormKey,
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
                          Text('Register',style: _styleTitle(),),
                          Text('to your account !',style: _styleTitle()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 40.h,),
                              Text('Full Name',style: _styleHint(),),
                              SizedBox(height: 15.h,),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'shimaa',
                                  prefixIcon: Icon(Icons.person_sharp,color: ColorManager.primaryOrange,),
                                ),
                                keyboardType: TextInputType.text,
                                controller: controller.emailController,
                                validator: (value){
                                  controller.userName = value! ;
                                },
                              ),
                              SizedBox(height: 20.h,),
                              Text('Mobile',style: _styleHint(),),
                              SizedBox(height: 10.h,),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '111111111',
                                  prefixIcon: Icon(Icons.phone,color: ColorManager.primaryOrange,),
                                ),
                                keyboardType: TextInputType.number,
                                controller: controller.emailController,
                              ),
                              SizedBox(height: 20.h,),
                              Text('Email (Optional)',style: _styleHint(),),
                              SizedBox(height: 10.h,),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'xxxxxxxxxx@gmail.com',
                                  prefixIcon: Icon(Icons.email_outlined,color: ColorManager.primaryOrange,),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                controller: controller.emailController,
                                onSaved: (value) {
                                  controller.email = value!;
                                },
                                validator: (value) {
                                  return controller.validateEmail(value!);
                                },
                              ),
                              SizedBox(height: 10.h,),
                              Text('Password',style: _styleHint(),),
                              SizedBox(height: 10.h,),
                              Obx(() => TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    hintText: '...........',
                                    prefixIcon: Icon(Icons.lock,color: ColorManager.primaryOrange,),
                                    suffixIcon: InkWell(
                                        onTap: (){
                                          controller.isPasswordVisible.value =! controller.isPasswordVisible.value;
                                        },

                                        child: Icon(
                                            controller.isPasswordVisible.value?Icons.remove_red_eye:Icons.visibility_off,color: ColorManager.primaryOrange))
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: controller.isPasswordVisible.value,
                                controller: controller.passwordController,
                                onSaved: (value) {
                                  controller.passwordController = value! as TextEditingController;
                                },
                                validator: (value) {
                                  return controller.validatePassword(value!);
                                },
                              ))
                              ,
                              SizedBox(height: 30.h,),
                              D_MaterialButton(
                                  width: double.infinity,
                                  color: ColorManager.primaryOrange,
                                  onPressed: (){

                                  }, child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(ImageManager.nextIcon),
                                  SizedBox(width: 15.w,),
                                  Text('Register',style: _styleTxtBtn(ColorManager.white),)
                                ],
                              )),
                              SizedBox(height: 20.h,),
                              D_MaterialButton(
                                  width: double.infinity,
                                  onPressed: (){
                                    Get.toNamed('/signIn');
                                  }, child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,color: ColorManager.greyBorder,),
                                  SizedBox(width: 15.w,),
                                  Text('Sign In',style: _styleTxtBtn(ColorManager.greyBorder),)
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
  Widget customAppBar(){
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
