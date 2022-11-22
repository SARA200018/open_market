import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{
  late TextEditingController searchController;
  var search = '';

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onClose() {
    searchController.dispose();
  }
}