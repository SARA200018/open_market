import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/app/app_router/app_router.dart';
import 'package:open_market_project/widgets/customAppBar.dart';

import '../../Helper/image_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar('Profile', context, ColorManager.primaryBlue),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                SizedBox(
                  height: 10.w,
                ),
                Text(
                  'Sara Gad',
                  style: TextStyle(
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Free Member',
                        style: _textStyle1()
                    ),
                    SizedBox(width: 10.w,),
                    Icon(
                      Icons.remove_red_eye,
                      color: ColorManager.grayContainer,
                      size: 14,
                    ),
                    SizedBox(width: 5.w,),
                    Text('300',style: _textStyle1(),)
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(Routes.editProfileRoute);
                  },
                  child: _buildContainer(
                      height: 35,
                      width: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(ImageManager.userIcon),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                buildListProfile(iconData: Icons.edit_note, settings: 'My Adds',route: Routes.myAddsRoute ),
                buildListProfile(iconData: Icons.favorite, settings: 'My Favorite',route:Routes.myFavoriteRoute ),
                buildListProfile(iconData: Icons.share_rounded, settings: 'Share App',route: Routes.profileRoute),
                 buildListProfile(iconData: Icons.phone, settings: 'Contact us',route: Routes.contactusRoute),
                 buildListProfile(iconData: Icons.question_mark, settings: 'FAQ',route:Routes.FAQRoute ),
                 buildListProfile(iconData: Icons.error_rounded, settings: 'About Us',route: Routes.aboutUsRoute),
                ]
          ),
        ),
      )
    );
  }


  Widget buildListProfile(

      {required IconData iconData,required String settings,required String route})
  {
    return GestureDetector(
      onTap: (){
        Get.toNamed(route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 100.h,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.primaryBlue,
                  radius:30.r,
                  child: Icon(iconData,color: Colors.white,size: 25,),
                ),
                SizedBox(width: 20.w,),
                Expanded(
                  child: Text(
                    '$settings',
                    style: TextStyle(
                        color: ColorManager.grayContainer,
                        fontSize: 20
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward,color: ColorManager.primaryOrange,)

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({
    required double height,
    required double width,
    required Widget child
  }) {
    return Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: ColorManager.primaryOrange,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 0.5, color: ColorManager.primaryOrange)),
        child: child);
  }

  TextStyle _textStyle1(){
    return TextStyle(
        fontSize: 14,
        color: ColorManager.grayContainer
    );
  }
}
