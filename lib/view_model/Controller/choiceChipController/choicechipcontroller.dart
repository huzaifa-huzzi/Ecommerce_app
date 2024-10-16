import 'package:get/get.dart';

class ChoiceChipController extends GetxController {
  var selectedChipIndex = (-1).obs; // Observable variable for the selected chip index

  void selectChip(int index) {
    selectedChipIndex.value = index;
  }
}
