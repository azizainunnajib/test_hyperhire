// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      rank: (json['rank'] as num).toInt(),
      image: json['image'] as String,
      title: json['title'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subtitle: json['subtitle'] as String,
      rating: (json['rating'] as num).toDouble(),
      countRating: (json['countRating'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'subtitle': instance.subtitle,
      'rating': instance.rating,
      'countRating': instance.countRating,
      'tags': instance.tags,
    };
