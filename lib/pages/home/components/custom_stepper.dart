import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class CustomStepper extends GetView<HomeController> {
  const CustomStepper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stepper(
      // type: StepperType.horizontal,
      steps: const [
        Step(isActive: true,title: Text('Step 1'), content: Text('Information for step 1')),
        Step(title: Text('Step 2'), content: Text('Information for step 2')),
        Step(title: Text('Step 3'), content: Text('Information for step 3')),
        Step(title: Text('Step 4'), content: Text('Information for step 4')),
      ],
      onStepTapped: (int newIndex){
        controller.setCurrentStep(newIndex);
      },
      currentStep: controller.currentStep.value,
      onStepContinue: (){
        controller.stepContinue();
      },
      onStepCancel: (){
        controller.stepCancel();
      },
    ));
  }

}