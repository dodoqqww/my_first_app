import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/settings/settings_view.dart';
import 'package:stacked/stacked.dart';

import '../admin/admin_view.dart';
import 'bottom_nav_viewmodel.dart';

class BottomNavView extends StackedView<BottomNavViewModel> {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomNavViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: getViewForIndex(viewModel.currentIndex),
      bottomNavigationBar: NavigationBar(
        selectedIndex: viewModel.currentIndex,
        onDestinationSelected: viewModel.setIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Map',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'MyPoints',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.access_alarm),
            icon: Icon(Icons.access_alarms_outlined),
            label: 'MyPoints',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => viewModel.navigateToAdd(),
      //   child: const Icon(Icons.add),
      // )
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const SettingsView();
      case 2:
        return const AdminView();
    }
    return const Text("No widget");
  }

  @override
  BottomNavViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavViewModel();
}
