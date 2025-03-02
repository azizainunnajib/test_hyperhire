import 'package:test_hyperhire/models/review_section_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

abstract class IReviewService {
  ReviewSectionModel fetchReviews(UserModel user);
}
