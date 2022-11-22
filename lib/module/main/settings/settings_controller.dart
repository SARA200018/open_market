import 'package:get/get.dart';

class SettingsController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  bool isSwitched = false;

  onChanged(value){
    isSwitched = value;
    update();
    print(isSwitched);
  }
}