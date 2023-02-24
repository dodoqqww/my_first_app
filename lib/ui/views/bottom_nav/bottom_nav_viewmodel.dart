import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class BottomNavViewModel extends IndexTrackingViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> navigateToAdd() async {
    await _navigationService.navigateTo("/home-view");
  }
}
