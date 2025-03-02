import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_promo_model.freezed.dart';
part 'image_promo_model.g.dart';

@freezed
class ImagePromoModel with _$ImagePromoModel {
  factory ImagePromoModel({
    required String id,
    required String image,
  }) = _ImagePromoModel;

  factory ImagePromoModel.fromJson(Map<String, dynamic> json) =>
      _$ImagePromoModelFromJson(json);
}
