import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/review_section_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

abstract class IProfileService {
  UserModel getProfile(String id);
  ProductModel getProduct(String userId);
  ReviewSectionModel getReview(String userId, String productId);
}
