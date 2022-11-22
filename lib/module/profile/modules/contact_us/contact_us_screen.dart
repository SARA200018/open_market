import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';

import '../../../../widgets/components/components.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Contact Us', context, ColorManager.primaryBlue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Container(
                    height: 200.h,
                    width: 400.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: ColorManager.greyBorder,
                        width: 0.2
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Contact Details :',style: TextStyle(
                                fontSize: 20,
                                color: ColorManager.grayContainer
                              ),),
                              SizedBox(width: 30.w,),
                              SvgPicture.asset(ImageManager.facebookIcon),
                              SizedBox(width: 20.w,),
                              SvgPicture.asset(ImageManager.instgramIcon),
                              SizedBox(width: 20.w,),
                              SvgPicture.asset(ImageManager.twitterIcon),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(ImageManager.phoneIcon),
                                  SizedBox(height: 10.h,),
                                  Text('Phone Number :',style: _textStyle(),),
                                  SizedBox(height: 10.h,),
                                  Text('+0000 0000 0000',style: _textStyle(),)
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  SvgPicture.asset(ImageManager.emailIcon),
                                  SizedBox(height: 10.h,),
                                  Text('Email Address :',style: _textStyle(),),
                                  SizedBox(height: 10.h,),
                                  Text('+0000 0000 0000',style: _textStyle(),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                Text('Full Name',style: _styleHint(),),
                SizedBox(height: 10,),
                textFormFailed(
                    hintText: 'Shimaazakarya',
                    prefixIcon: Icons.person_outline,
                    prefixIconColor: ColorManager.primaryOrange,
                    keyboardType: TextInputType.text,
                    textEditingController: TextEditingController(),
                    validator: (value){

                    }),
                SizedBox(height: 20,),
                Text('Mobile',style: _styleHint(),),
                SizedBox(height: 10,),
                textFormFailed(
                    hintText: '111111',
                    prefixIcon: Icons.email_outlined,
                    prefixIconColor: ColorManager.primaryOrange,
                    keyboardType: TextInputType.text,
                    textEditingController: TextEditingController(),
                    validator: (value){
                    }),
                SizedBox(height: 20,),
                Text('Description',style: _styleHint(),),
                SizedBox(height: 10.h,),
                textFormFailed(
                    maxline: 4,
                    hintText: 'Contrary To Popular Belief',
                    keyboardType: TextInputType.text,
                    textEditingController: TextEditingController(),
                    validator: (value){
                    }),
                SizedBox(height: 20.h,),
                    D_MaterialButton(
                      color: ColorManager.primaryOrange,
                        colorBorder: ColorManager.primaryOrange,
                        onPressed: (){
                        },
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImageManager.sendIcon),
                        SizedBox(width: 20,),
                        Text('Send',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ), width: double.infinity)

              ],
            ),
          ),
        ),
      ),
    );
  }
  TextStyle _textStyle(){
    return TextStyle(
      fontSize: 12,
      color: ColorManager.grayContainer
    );
  }
  TextStyle _styleHint(){
    return TextStyle(
        fontSize: 18,
        color: ColorManager.greyBorder
    );
  }
}
