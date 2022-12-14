import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Helper/color_helper.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
    return Container(
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
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 80,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://m.atcdn.co.uk/vms/media/w980/4b5770f73f274430aa20ee1e0aa89997.jpg',
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'A 2020 Hummer washing machine and fan ad is under review',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time,size: 15,color: ColorManager.grayContainer,),
                      SizedBox(width: 5.w,),
                      Text(
                        '7/8/2020',
                        style: TextStyle(
                            fontSize: 11, color: ColorManager.grayContainer),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
