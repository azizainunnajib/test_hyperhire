// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewSectionModelImpl _$$ReviewSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewSectionModelImpl(
      id: json['id'] as String,
      reviewer: UserModel.fromJson(json['reviewer'] as Map<String, dynamic>),
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ReviewSectionModelImplToJson(
        _$ReviewSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewer': instance.reviewer,
      'product': instance.product,
      'reviews': instance.reviews,
      'rating': instance.rating,
      'date': instance.date.toIso8601String(),
      'keywords': instance.keywords,
    };
