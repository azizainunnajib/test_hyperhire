// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_promo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImagePromoModel _$ImagePromoModelFromJson(Map<String, dynamic> json) {
  return _ImagePromoModel.fromJson(json);
}

/// @nodoc
mixin _$ImagePromoModel {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ImagePromoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagePromoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagePromoModelCopyWith<ImagePromoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePromoModelCopyWith<$Res> {
  factory $ImagePromoModelCopyWith(
          ImagePromoModel value, $Res Function(ImagePromoModel) then) =
      _$ImagePromoModelCopyWithImpl<$Res, ImagePromoModel>;
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class _$ImagePromoModelCopyWithImpl<$Res, $Val extends ImagePromoModel>
    implements $ImagePromoModelCopyWith<$Res> {
  _$ImagePromoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePromoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePromoModelImplCopyWith<$Res>
    implements $ImagePromoModelCopyWith<$Res> {
  factory _$$ImagePromoModelImplCopyWith(_$ImagePromoModelImpl value,
          $Res Function(_$ImagePromoModelImpl) then) =
      __$$ImagePromoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class __$$ImagePromoModelImplCopyWithImpl<$Res>
    extends _$ImagePromoModelCopyWithImpl<$Res, _$ImagePromoModelImpl>
    implements _$$ImagePromoModelImplCopyWith<$Res> {
  __$$ImagePromoModelImplCopyWithImpl(
      _$ImagePromoModelImpl _value, $Res Function(_$ImagePromoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePromoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$ImagePromoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagePromoModelImpl implements _ImagePromoModel {
  _$ImagePromoModelImpl({required this.id, required this.image});

  factory _$ImagePromoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePromoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String image;

  @override
  String toString() {
    return 'ImagePromoModel(id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePromoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of ImagePromoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePromoModelImplCopyWith<_$ImagePromoModelImpl> get copyWith =>
      __$$ImagePromoModelImplCopyWithImpl<_$ImagePromoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePromoModelImplToJson(
      this,
    );
  }
}

abstract class _ImagePromoModel implements ImagePromoModel {
  factory _ImagePromoModel(
      {required final String id,
      required final String image}) = _$ImagePromoModelImpl;

  factory _ImagePromoModel.fromJson(Map<String, dynamic> json) =
      _$ImagePromoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get image;

  /// Create a copy of ImagePromoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePromoModelImplCopyWith<_$ImagePromoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
