import 'package:test_hyperhire/ui/views/home/home_view.dart';
import 'package:test_hyperhire/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_hyperhire/ui/views/profile/profile_view.dart';
import 'package:test_hyperhire/ui/views/main/main_view.dart';
import 'package:test_hyperhire/services/home_service.dart';
import 'package:test_hyperhire/services/review_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: MainView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: HomeService),
    LazySingleton(classType: ReviewService),
// @stacked-service
  ],
  bottomsheets: [
    // StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    // StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
