// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealEntity _$$_MealEntityFromJson(Map<String, dynamic> json) =>
    _$_MealEntity(
      name: json['name'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      videoUrl: json['videoUrl'] as String? ?? '',
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      region: json['region'] as String? ?? '',
      instructions: (json['instructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ingredientDetails: (json['ingredientDetails'] as List<dynamic>?)
              ?.map((e) => IngredientDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_MealEntityToJson(_$_MealEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoUrl': instance.videoUrl,
      'categories': instance.categories,
      'region': instance.region,
      'instructions': instance.instructions,
      'ingredientDetails': instance.ingredientDetails,
    };
