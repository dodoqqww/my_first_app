import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    final myController =
        TextEditingController(text: viewModel.refreshRate.toString());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Text('AppBar Demo'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.dashboard),
                tooltip: 'SendData',
                onPressed: () => viewModel.sendData())
          ]),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                TextField(
                  controller: myController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => viewModel.setRate(value),
                ),
                SingleChildScrollView(
                    child: ColorPicker(
                  pickerColor: viewModel.selectedColor,
                  enableAlpha: false,
                  labelTypes: const [],
                  displayThumbColor: true,
                  paletteType: PaletteType.hueWheel,
                  onColorChanged: ((value) => viewModel.changeColor(value)),
                )),
                Text("R:" +
                    viewModel.selectedColor.red.toString() +
                    " G:" +
                    viewModel.selectedColor.green.toString() +
                    " B:" +
                    viewModel.selectedColor.blue.toString()),
                const Divider(
                  thickness: 5,
                ),
                Text("Red: " + viewModel.redSliderValue.toInt().toString()),
                Slider(
                  value: viewModel.redSliderValue,
                  max: 255,
                  divisions: 255,
                  label: viewModel.redSliderValue.round().toString(),
                  onChanged: (double value) {
                    viewModel.changeColorAdmin(value, 1);
                  },
                ),
                Text("Green: " + viewModel.greenSliderValue.toInt().toString()),
                Slider(
                  value: viewModel.greenSliderValue,
                  max: 255,
                  divisions: 255,
                  label: viewModel.greenSliderValue.round().toString(),
                  onChanged: (double value) {
                    viewModel.changeColorAdmin(value, 2);
                  },
                ),
                Text("Blue: " + viewModel.blueSliderValue.toInt().toString()),
                Slider(
                  value: viewModel.blueSliderValue,
                  max: 255,
                  divisions: 255,
                  label: viewModel.blueSliderValue.round().toString(),
                  onChanged: (double value) {
                    viewModel.changeColorAdmin(value, 3);
                  },
                ),
              ],
            )),
      )),
    );
    ;
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
