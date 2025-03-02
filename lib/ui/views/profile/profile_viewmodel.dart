import 'package:stacked/stacked.dart';
import 'package:test_hyperhire/app/app.locator.dart';
import 'package:test_hyperhire/models/review_section_model.dart';
import 'package:test_hyperhire/models/user_model.dart';
import 'package:test_hyperhire/services/home_service.dart';
import 'package:test_hyperhire/services/review_service.dart';

class ProfileViewModel extends BaseViewModel {
  final _homeService = locator<HomeService>();
  final _reviewService = locator<ReviewService>();

  UserModel _selectedUser =
      UserModel(id: '', name: '', picture: '', rank: 0, description: '');
  UserModel get selectedUser => _selectedUser;
  UserModel fetchSelectedUser(String userId) {
    _selectedUser =
        _homeService.getTopUsers().where((x) => x.id == userId).first;
    rebuildUi();
    return _selectedUser;
  }

  ReviewSectionModel? _reviewModel;
  ReviewSectionModel? get reviewModel => _reviewModel;
  void fetchReview(UserModel user) {
    _reviewModel = _reviewService.fetchReviews(user);
    rebuildUi();
  }

  void runStartupLogic(String userId) {
    UserModel user = fetchSelectedUser(userId);
    fetchReview(user);
  }
}
