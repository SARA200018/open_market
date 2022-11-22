import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:open_market_project/widgets/customAppBar.dart';
import '../../../Helper/color_helper.dart';
import '../../../Helper/image_helper.dart';
import '../../../widgets/components/components.dart';
import 'edit_profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
        builder:(controller)=>
            Scaffold(
              appBar: customAppBar('Edit Profile', context, ColorManager.primaryBlue),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child:Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 60.r,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                              Icon(Icons.camera_alt)
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30.h,),
                            Text('Full Name',style: _styleHint(),),
                            SizedBox(height: 15.h,),
                            textFormFailed(
                                hintText: 'shimaa',
                                keyboardType: TextInputType.text,
                                textEditingController: TextEditingController(),
                                validator: (value){

                                }),
                            SizedBox(height: 20.h,),
                            Text('Mobile',style: _styleHint(),),
                            SizedBox(height: 10.h,),
                            textFormFailed(
                                hintText: '111111',
                                keyboardType: TextInputType.phone,
                                textEditingController: TextEditingController(),
                                validator: (value){
                                }),
                            SizedBox(height: 20.h,),
                            Text('Email (Optional)',style: _styleHint(),),
                            textFormFailed(
                                hintText: 'xxxxxxxxxx@gmail.com',
                                keyboardType: TextInputType.emailAddress,
                                textEditingController: TextEditingController(),
                                validator: (value){
                                }),
                            SizedBox(height: 10.h,),
                            Text('Date Of Birth',style: _styleHint(),),
                            SizedBox(height: 10.h,),
                            textFormFailed(
                                hintText: 'xxxxxxxxxx@gmail.com',
                                keyboardType: TextInputType.emailAddress,
                                textEditingController: TextEditingController(),
                                prefixIcon: Icons.date_range,
                                prefixIconColor: ColorManager.primaryOrange,
                                suffixIcon: Icon(Icons.arrow_forward_ios),
                                validator: (value){
                                }),
                            SizedBox(height: 30.h,),
                            D_MaterialButton(
                                width: double.infinity,
                                color: ColorManager.primaryOrange,
                                colorBorder: ColorManager.primaryOrange,
                                onPressed: (){

                                }, child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(ImageManager.userIcon),
                                SizedBox(width: 15.w,),
                                Text('Save',style: _styleTxtBtn(ColorManager.white),)
                              ],
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
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
