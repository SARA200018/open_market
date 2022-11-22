import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:open_market_project/app/app_router/app_router.dart';
import '../../../Helper/color_helper.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsetsDirectional.all(8),
              scrollDirection:Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context,index)=>_buildListItem(),
              separatorBuilder: (context,index)=>SizedBox(height: 10,),
              itemCount: 8
          ),
        )
      ],
    );
  }

  Widget _buildListItem() {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.inChatScreenRoute);
      },
      child: Container(
          width: double.infinity,
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: ColorManager.grayContainer,
              width: 0.1,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35.r,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sara Gad',
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorManager.primaryBlue
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                          'Hello . Do You Advertise',
                          style: _textStyle1()
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time,size: 15,color: ColorManager.grayContainer,),
                          SizedBox(width: 5.w,),
                          Text(
                            '3-1-2020',
                            style: TextStyle(
                                fontSize: 11, color: ColorManager.grayContainer),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Icon(Icons.arrow_forward,color: ColorManager.primaryOrange,))
              ],
            ),
          ),
        ),
    );
  }
  TextStyle _textStyle1(){
    return TextStyle(
        fontSize: 14,
        color: ColorManager.grayContainer
    );
  }
}
