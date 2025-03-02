// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewSectionModel _$ReviewSectionModelFromJson(Map<String, dynamic> json) {
  return _ReviewSectionModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewSectionModel {
  String get id => throw _privateConstructorUsedError;
  UserModel get reviewer => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;

  /// Serializes this ReviewSectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewSectionModelCopyWith<ReviewSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewSectionModelCopyWith<$Res> {
  factory $ReviewSectionModelCopyWith(
          ReviewSectionModel value, $Res Function(ReviewSectionModel) then) =
      _$ReviewSectionModelCopyWithImpl<$Res, ReviewSectionModel>;
  @useResult
  $Res call(
      {String id,
      UserModel reviewer,
      ProductModel product,
      List<ReviewModel> reviews,
      double rating,
      DateTime date,
      List<String> keywords});

  $UserModelCopyWith<$Res> get reviewer;
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ReviewSectionModelCopyWithImpl<$Res, $Val extends ReviewSectionModel>
    implements $ReviewSectionModelCopyWith<$Res> {
  _$ReviewSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewer = null,
    Object? product = null,
    Object? reviews = null,
    Object? rating = null,
    Object? date = null,
    Object? keywords = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as UserModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get reviewer {
    return $UserModelCopyWith<$Res>(_value.reviewer, (value) {
      return _then(_value.copyWith(reviewer: value) as $Val);
    });
  }

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewSectionModelImplCopyWith<$Res>
    implements $ReviewSectionModelCopyWith<$Res> {
  factory _$$ReviewSectionModelImplCopyWith(_$ReviewSectionModelImpl value,
          $Res Function(_$ReviewSectionModelImpl) then) =
      __$$ReviewSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UserModel reviewer,
      ProductModel product,
      List<ReviewModel> reviews,
      double rating,
      DateTime date,
      List<String> keywords});

  @override
  $UserModelCopyWith<$Res> get reviewer;
  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ReviewSectionModelImplCopyWithImpl<$Res>
    extends _$ReviewSectionModelCopyWithImpl<$Res, _$ReviewSectionModelImpl>
    implements _$$ReviewSectionModelImplCopyWith<$Res> {
  __$$ReviewSectionModelImplCopyWithImpl(_$ReviewSectionModelImpl _value,
      $Res Function(_$ReviewSectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewer = null,
    Object? product = null,
    Object? reviews = null,
    Object? rating = null,
    Object? date = null,
    Object? keywords = null,
  }) {
    return _then(_$ReviewSectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as UserModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewSectionModelImpl implements _ReviewSectionModel {
  _$ReviewSectionModelImpl(
      {required this.id,
      required this.reviewer,
      required this.product,
      required final List<ReviewModel> reviews,
      required this.rating,
      required this.date,
      required final List<String> keywords})
      : _reviews = reviews,
        _keywords = keywords;

  factory _$ReviewSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewSectionModelImplFromJson(json);

  @override
  final String id;
  @override
  final UserModel reviewer;
  @override
  final ProductModel product;
  final List<ReviewModel> _reviews;
  @override
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final double rating;
  @override
  final DateTime date;
  final List<String> _keywords;
  @override
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  String toString() {
    return 'ReviewSectionModel(id: $id, reviewer: $reviewer, product: $product, reviews: $reviews, rating: $rating, date: $date, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reviewer,
      product,
      const DeepCollectionEquality().hash(_reviews),
      rating,
      date,
      const DeepCollectionEquality().hash(_keywords));

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewSectionModelImplCopyWith<_$ReviewSectionModelImpl> get copyWith =>
      __$$ReviewSectionModelImplCopyWithImpl<_$ReviewSectionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewSectionModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewSectionModel implements ReviewSectionModel {
  factory _ReviewSectionModel(
      {required final String id,
      required final UserModel reviewer,
      required final ProductModel product,
      required final List<ReviewModel> reviews,
      required final double rating,
      required final DateTime date,
      required final List<String> keywords}) = _$ReviewSectionModelImpl;

  factory _ReviewSectionModel.fromJson(Map<String, dynamic> json) =
      _$ReviewSectionModelImpl.fromJson;

  @override
  String get id;
  @override
  UserModel get reviewer;
  @override
  ProductModel get product;
  @override
  List<ReviewModel> get reviews;
  @override
  double get rating;
  @override
  DateTime get date;
  @override
  List<String> get keywords;

  /// Create a copy of ReviewSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewSectionModelImplCopyWith<_$ReviewSectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
