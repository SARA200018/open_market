import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/module/search/filter/filter_controller.dart';
import 'package:open_market_project/widgets/components/components.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterConttroller>(builder: (controller)=>Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Center(child: Text('Filter')),
        backgroundColor: ColorManager.primaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('Price Range :',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('20 \$',style: _textRange(),),
                  Spacer(),
                  Text('70 \$',style: _textRange(),)
                ],
              ),
            ),
            RangeSlider(
              values: controller.selectedRange,
              onChanged: controller.onChangedSlider,
              min: 20,
              max: 70,
              divisions: 5,
              labels: RangeLabels(
                controller.selectedRange.start.round().toString(),
                controller.selectedRange.end.round().toString(),
              ),
              activeColor: ColorManager.primaryOrange,
              inactiveColor: ColorManager.greyBorder,

            ),

            Text('Product Type',style: _styleHint(),),
            SizedBox(height: 10.h,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 0.2,
                      color: ColorManager.greyBorder
                    ),
                  ),
                  child: Row(
                    children: [
                      TextButton.icon(
                        label:  Text('New',style: _styleRadioText(),),
                        icon: Radio(
                          value: Use.New,
                          groupValue: controller.useValue,
                          onChanged:controller.onChangedRadioUse,
                        ),
                        onPressed:null
                      ),
                      TextButton.icon(
                        label:  Text('Used',style: _styleRadioText(),),
                        icon: Radio(
                          value: Use.Used,
                          groupValue: controller.useValue,
                          onChanged:controller.onChangedRadioUse,
                        ),
                        onPressed : null,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Text('Category',style: _styleHint(),),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 0.2,
                        color: ColorManager.greyBorder
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextButton.icon(
                              label:  Text('Devices',style: _styleRadioText(),),
                              icon: Radio(
                                value: Type.Devices,
                                groupValue: controller.typeValue,
                                onChanged:controller.onChangedRadioType,
                              ),
                              onPressed:null
                          ),
                          TextButton.icon(
                            label:  Text('Car',style: _styleRadioText(),),
                            icon: Radio(
                              value: Type.Car,
                              groupValue: controller.typeValue,
                              onChanged:controller.onChangedRadioType,
                            ),
                            onPressed : null,
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          TextButton.icon(
                              label:  Text('House Furniture',style: _styleRadioText(),),
                              icon: Radio(
                                value: Qan.HouseFurnuture,
                                groupValue: controller.qanValue,
                                onChanged:controller.onChangedRadioQan,
                              ),
                              onPressed:null
                          ),
                          TextButton.icon(
                            label:  Text('Electronic',style: _styleRadioText(),),
                            icon: Radio(
                              value: Qan.Electronic,
                              groupValue: controller.qanValue,
                              onChanged:controller.onChangedRadioQan,
                            ),
                            onPressed : null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: D_MaterialButton(
                          onPressed: (){},
                          child: Text('Apply',style: TextStyle(color: Colors.white),),
                          width: 150,
                          color: ColorManager.primaryOrange,
                          colorBorder: ColorManager.primaryOrange,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: D_MaterialButton(
                          onPressed: (){},
                          child: Text('Clear',style: TextStyle(color: ColorManager.primaryOrange),),
                          width: 150,
                          colorBorder: ColorManager.primaryOrange

                      ),
                    ),

                  ],
                ),
              ],

            )
          ]
        ),
      ),
    ));
  }
  TextStyle _textRange(){
    return TextStyle(
      fontSize: 18,
      color: ColorManager.grayContainer
    );
  }
  TextStyle _styleHint(){
    return TextStyle(
        fontSize: 16,
        color: ColorManager.greyBorder
    );
  }
  TextStyle _styleRadioText(){
    return TextStyle(
        fontSize: 15,
      color: Colors.black38,
    );
  }

}
