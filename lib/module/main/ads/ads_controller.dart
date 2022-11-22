import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Use_ { New, Used }
enum Type_ { Devices, Car}
enum Qan_ { HouseFurnuture, Electronic}

class AdsConttroller extends GetxController{

  Use_ useValue_ = Use_.New;


  onChangedRadioUse_(value){
    useValue_ = value;
    update();
  }

  Type_ typeValue_ = Type_.Devices;

  onChangedRadioType_(value){
    typeValue_ = value;
    update();
  }

  Qan_ qanValue_ = Qan_.Electronic;

  onChangedRadioQan_(value){
    qanValue_ = value;
    update();
  }
}