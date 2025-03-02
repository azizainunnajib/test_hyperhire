import 'package:test_hyperhire/models/image_promo_model.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

abstract class IHomeService {
  List<ImagePromoModel> getPromoImages();
  List<ProductModel> getTopProducts();
  List<UserModel> getTopUsers();
}
