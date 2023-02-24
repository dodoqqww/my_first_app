import 'package:my_first_app/services/bluetooth_service.dart';
import 'package:my_first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/ui/views/bottom_nav/bottom_nav_view.dart';
import 'package:my_first_app/ui/bottom_sheets/connection/connection_sheet.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: BottomNavView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BluetoothService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: ConnectionSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
