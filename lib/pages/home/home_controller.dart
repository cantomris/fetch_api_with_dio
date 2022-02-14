import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final String title = 'Homepage';
  var currentStep = 0.obs;

  void setCurrentStep(int newIndex) {
    currentStep.value = newIndex;
    print('Selected step index ${newIndex}');
    // update();
  }
  void stepContinue(){
    if (currentStep != 3) currentStep += 1;
    // update();
  }
  void stepCancel(){
    if (currentStep != 0) currentStep -= 1;
    // update();
  }
  void isActive (currentIndex) {
    currentStep.value == currentIndex ? true : false;
  }
}