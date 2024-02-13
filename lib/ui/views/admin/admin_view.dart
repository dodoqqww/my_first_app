import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_viewmodel.dart';

class AdminView extends StackedView<AdminViewModel> {
  const AdminView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Center(
            child: Column(
          children: [
            Text("Red: " + viewModel.redSliderValue.toInt().toString()),
            Slider(
              value: viewModel.redSliderValue,
              max: 255,
              divisions: 255,
              label: viewModel.redSliderValue.round().toString(),
              onChanged: (double value) {
                viewModel.changeColor(value, 1);
              },
            ),
            Text("Green: " + viewModel.greenSliderValue.toInt().toString()),
            Slider(
              value: viewModel.greenSliderValue,
              max: 255,
              divisions: 255,
              label: viewModel.greenSliderValue.round().toString(),
              onChanged: (double value) {
                viewModel.changeColor(value, 2);
              },
            ),
            Text("Blue: " + viewModel.blueSliderValue.toInt().toString()),
            Slider(
              value: viewModel.blueSliderValue,
              max: 255,
              divisions: 255,
              label: viewModel.blueSliderValue.round().toString(),
              onChanged: (double value) {
                viewModel.changeColor(value, 3);
              },
            ),
          ],
        )),
      ),
    ));
  }

  @override
  AdminViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminViewModel();
}
