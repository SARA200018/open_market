import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/module/main/ads/ads_controller.dart';
import 'package:open_market_project/module/search/filter/filter_controller.dart';
import 'package:open_market_project/widgets/components/components.dart';

class AdsScreen extends StatelessWidget {
   AdsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdsConttroller>(builder: (controller)=>Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Ads Name',style: _styleHint(),),
          SizedBox(height: 10,),
          textFormFailed(
              hintText: 'Peugeot Model 2020',
              prefixIcon: Icons.phone_in_talk,
              prefixIconColor: ColorManager.primaryOrange,
              keyboardType: TextInputType.text,
              textEditingController: TextEditingController(),
              validator: (value){

              }),
            SizedBox(height: 20,),
            Text('Price',style: _styleHint(),),
          SizedBox(height: 10,),
          textFormFailed(
              hintText: '300\$',
              prefixIcon: Icons.monetization_on_outlined,
              prefixIconColor: ColorManager.primaryOrange,
              keyboardType: TextInputType.text,
              textEditingController: TextEditingController(),
              validator: (value){
              }),
            SizedBox(height: 20,),
            Text('Ads Description',style: _styleHint(),),
            SizedBox(height: 10,),
            textFormFailed(
              maxline: 4,
              hintText: 'Contrary To Popular Belief',
              keyboardType: TextInputType.text,
              textEditingController: TextEditingController(),
              validator: (value){
              }),
           SizedBox(height: 20,),
            Text('Produc Type',style: _styleHint(),),
            SizedBox(height: 10,),
            Row(
              children: [
                TextButton.icon(
                    label:  Text('New',style: _styleRadioText(),),
                    icon: Radio(
                      value: Use_.New,
                      groupValue: controller.useValue_,
                      onChanged:controller.onChangedRadioUse_,
                    ),
                    onPressed:null
                ),
                TextButton.icon(
                  label:  Text('Used',style: _styleRadioText(),),
                  icon: Radio(
                    value: Use_.Used,
                    groupValue: controller.useValue_,
                    onChanged:controller.onChangedRadioUse_,
                  ),
                  onPressed : null,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text('Choose Image',style: _styleHint(),),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 0.2,
                  color: ColorManager.grayContainer
                )
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 100,
                  width: 45,
                  color: Colors.grey[300],
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(
                      Icons.add,
                      color: ColorManager.primaryOrange,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Category',style: _styleHint(),),
            SizedBox(height: 10,),
            Row(
              children: [
                TextButton.icon(
                    label:  Text('House Furniture',style: _styleRadioText(),),
                    icon: Radio(
                      value: Qan_.HouseFurnuture,
                      groupValue: controller.qanValue_,
                      onChanged:controller.onChangedRadioQan_,
                    ),
                    onPressed:null
                ),
                TextButton.icon(
                  label:  Text('Electronic',style: _styleRadioText(),),
                  icon: Radio(
                    value: Qan_.Electronic,
                    groupValue: controller.qanValue_,
                    onChanged:controller.onChangedRadioQan_,
                  ),
                  onPressed : null,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
  TextStyle _styleHint(){
    return TextStyle(
        fontSize: 18,
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
