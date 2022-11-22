import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Use { New, Used }
enum Type { Devices, Car}
enum Qan { HouseFurnuture, Electronic}

class FilterConttroller extends GetxController{
  var selectedRange = RangeValues(20,70);

  onChangedSlider(RangeValues newValue){

    selectedRange = newValue;
    update();

  }

  Use useValue = Use.New;


  onChangedRadioUse(value){
    useValue = value;
    update();
  }

  Type typeValue = Type.Devices;

  onChangedRadioType(value){
    typeValue = value;
    update();
  }

  Qan qanValue = Qan.Electronic;

  onChangedRadioQan(value){
    qanValue = value;
    update();
  }
}