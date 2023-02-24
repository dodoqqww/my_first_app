import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'connection_sheet_model.dart';

class ConnectionSheet extends StackedView<ConnectionSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const ConnectionSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectionSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: viewModel.isBusy
          ? const CircularProgressIndicator()
          : viewModel.scanResults.isEmpty
              ? ElevatedButton(
                  onPressed: () => viewModel.startSearch(),
                  child: const Text("Keresés indítása."))
              : ListView.builder(
                  itemCount: viewModel.scanResults.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: const Icon(Icons.bluetooth),
                        trailing: ElevatedButton(
                            onPressed: () =>
                                viewModel.connect(viewModel.scanResults[index]),
                            child: const Text("Csatlakozás")),
                        title: Text(
                            viewModel.scanResults[index].peripheral.name ??
                                "Unknown"));
                  }),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }

  @override
  ConnectionSheetModel viewModelBuilder(BuildContext context) =>
      ConnectionSheetModel();
}
