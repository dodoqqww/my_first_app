import 'package:flutter/material.dart';
import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'dart:developer';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => viewModel.navigateToBottomNavView(),
                child: Text("Hit me!")),
            const Text(
              'Kérlek kapcsold be a Bluetooth-t.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Várok ...',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                horizontalSpaceSmall,
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    strokeWidth: 6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  Future<void> onViewModelReady(StartupViewModel viewModel) async {
    await viewModel.intiBle();
    viewModel.stream.listen((event) {
      if (event == BluetoothState.POWERED_ON) {
        log("bekapcs ble");
        viewModel.navigateToBottomNavView();
      } else if (event == BluetoothState.POWERED_OFF) {
        log("kikapcs ble");
        viewModel.navigateToStartupView();
      } else {
        log(event.toString());
      }
    });
  }
}
