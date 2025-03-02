import 'package:stacked/stacked_annotations.dart';
import 'package:test_hyperhire/app/app.locator.dart';
import 'package:test_hyperhire/abstract/islide_show.dart';
import 'package:test_hyperhire/app/app.router.dart';
import 'package:test_hyperhire/models/image_promo_model.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/user_model.dart';
import 'package:test_hyperhire/services/home_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

@LazySingleton()
class HomeViewModel extends BaseViewModel implements ISlideShow {
  final _homeService = locator<HomeService>();
  final _navigationService = locator<NavigationService>();

  int _slideIndex = 0;
  @override
  int get slideIndex => _slideIndex;
  @override
  void setSlideIndex(int value) {
    _slideIndex = value;
    rebuildUi();
  }

  List<ImagePromoModel> _promoImages = [];
  @override
  List<ImagePromoModel> get promoImages => _promoImages;
  @override
  void fetchPromoImages() {
    _promoImages = _homeService.getPromoImages();
    rebuildUi();
  }

  List<ProductModel> _topProduct = [];
  List<ProductModel> get topProduct => _topProduct;
  void fetchTopProduct() {
    _topProduct = _homeService.getTopProducts();
    rebuildUi();
  }

  List<UserModel> _topUser = [];
  List<UserModel> get topUser => _topUser;
  void fetchTopuser() {
    _topUser = _homeService.getTopUsers();
    rebuildUi();
  }

  Future runStartupLogic() async {
    fetchPromoImages();
    fetchTopProduct();
    fetchTopuser();
  }

  void navigateToProfile(UserModel user) {
    _navigationService.navigateToProfileView(userId: user.id);
  }

  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksHomeBottomSheetTitle,
  //     description: ksHomeBottomSheetDescription,
  //   );
  // }
}
