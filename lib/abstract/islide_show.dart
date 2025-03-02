import 'package:test_hyperhire/models/image_promo_model.dart';

abstract class ISlideShow {
  int get slideIndex;
  void setSlideIndex(int value);

  List<ImagePromoModel> get promoImages;
  fetchPromoImages();
}
