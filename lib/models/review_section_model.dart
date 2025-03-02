import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_hyperhire/models/product_model.dart';
import 'package:test_hyperhire/models/review_model.dart';
import 'package:test_hyperhire/models/user_model.dart';

part 'review_section_model.freezed.dart';
part 'review_section_model.g.dart';

@freezed
class ReviewSectionModel with _$ReviewSectionModel {
  factory ReviewSectionModel({
    required String id,
    required UserModel reviewer,
    required ProductModel product,
    required List<ReviewModel> reviews,
    required double rating,
    required DateTime date,
    required List<String> keywords,
  }) = _ReviewSectionModel;

  factory ReviewSectionModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewSectionModelFromJson(json);
}
