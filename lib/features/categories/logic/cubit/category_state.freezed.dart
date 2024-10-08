// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadingImplCopyWith<$Res> {
  factory _$$CategoriesLoadingImplCopyWith(_$CategoriesLoadingImpl value,
          $Res Function(_$CategoriesLoadingImpl) then) =
      __$$CategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoriesLoadingImpl>
    implements _$$CategoriesLoadingImplCopyWith<$Res> {
  __$$CategoriesLoadingImplCopyWithImpl(_$CategoriesLoadingImpl _value,
      $Res Function(_$CategoriesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl implements CategoriesLoading {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.categoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements CategoryState {
  const factory CategoriesLoading() = _$CategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesSuccessImplCopyWith<$Res> {
  factory _$$CategoriesSuccessImplCopyWith(_$CategoriesSuccessImpl value,
          $Res Function(_$CategoriesSuccessImpl) then) =
      __$$CategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String?>? categoriesList});
}

/// @nodoc
class __$$CategoriesSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoriesSuccessImpl>
    implements _$$CategoriesSuccessImplCopyWith<$Res> {
  __$$CategoriesSuccessImplCopyWithImpl(_$CategoriesSuccessImpl _value,
      $Res Function(_$CategoriesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = freezed,
  }) {
    return _then(_$CategoriesSuccessImpl(
      freezed == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

class _$CategoriesSuccessImpl implements CategoriesSuccess {
  const _$CategoriesSuccessImpl(final List<String?>? categoriesList)
      : _categoriesList = categoriesList;

  final List<String?>? _categoriesList;
  @override
  List<String?>? get categoriesList {
    final value = _categoriesList;
    if (value == null) return null;
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryState.categoriesSuccess(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesList));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      __$$CategoriesSuccessImplCopyWithImpl<_$CategoriesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoriesSuccess(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoriesSuccess?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess implements CategoryState {
  const factory CategoriesSuccess(final List<String?>? categoriesList) =
      _$CategoriesSuccessImpl;

  List<String?>? get categoriesList;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesErrorImplCopyWith<$Res> {
  factory _$$CategoriesErrorImplCopyWith(_$CategoriesErrorImpl value,
          $Res Function(_$CategoriesErrorImpl) then) =
      __$$CategoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$CategoriesErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoriesErrorImpl>
    implements _$$CategoriesErrorImplCopyWith<$Res> {
  __$$CategoriesErrorImplCopyWithImpl(
      _$CategoriesErrorImpl _value, $Res Function(_$CategoriesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$CategoriesErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$CategoriesErrorImpl implements CategoriesError {
  const _$CategoriesErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'CategoryState.categoriesError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      __$$CategoriesErrorImplCopyWithImpl<_$CategoriesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoriesError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoriesError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements CategoryState {
  const factory CategoriesError(final ErrorHandler errorHandler) =
      _$CategoriesErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsLoadingImplCopyWith<$Res> {
  factory _$$CategoryProductsLoadingImplCopyWith(
          _$CategoryProductsLoadingImpl value,
          $Res Function(_$CategoryProductsLoadingImpl) then) =
      __$$CategoryProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryProductsLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsLoadingImpl>
    implements _$$CategoryProductsLoadingImplCopyWith<$Res> {
  __$$CategoryProductsLoadingImplCopyWithImpl(
      _$CategoryProductsLoadingImpl _value,
      $Res Function(_$CategoryProductsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryProductsLoadingImpl implements CategoryProductsLoading {
  const _$CategoryProductsLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.categoryProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoryProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoryProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsLoading implements CategoryState {
  const factory CategoryProductsLoading() = _$CategoryProductsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryProductsSuccessImplCopyWith<$Res> {
  factory _$$CategoryProductsSuccessImplCopyWith(
          _$CategoryProductsSuccessImpl value,
          $Res Function(_$CategoryProductsSuccessImpl) then) =
      __$$CategoryProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryResponseModel?>? productsList});
}

/// @nodoc
class __$$CategoryProductsSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsSuccessImpl>
    implements _$$CategoryProductsSuccessImplCopyWith<$Res> {
  __$$CategoryProductsSuccessImplCopyWithImpl(
      _$CategoryProductsSuccessImpl _value,
      $Res Function(_$CategoryProductsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = freezed,
  }) {
    return _then(_$CategoryProductsSuccessImpl(
      freezed == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponseModel?>?,
    ));
  }
}

/// @nodoc

class _$CategoryProductsSuccessImpl implements CategoryProductsSuccess {
  const _$CategoryProductsSuccessImpl(
      final List<CategoryResponseModel?>? productsList)
      : _productsList = productsList;

  final List<CategoryResponseModel?>? _productsList;
  @override
  List<CategoryResponseModel?>? get productsList {
    final value = _productsList;
    if (value == null) return null;
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryState.categoryProductsSuccess(productsList: $productsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsList));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => __$$CategoryProductsSuccessImplCopyWithImpl<
          _$CategoryProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoryProductsSuccess(productsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoryProductsSuccess?.call(productsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(productsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsSuccess implements CategoryState {
  const factory CategoryProductsSuccess(
          final List<CategoryResponseModel?>? productsList) =
      _$CategoryProductsSuccessImpl;

  List<CategoryResponseModel?>? get productsList;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsErrorImplCopyWith<$Res> {
  factory _$$CategoryProductsErrorImplCopyWith(
          _$CategoryProductsErrorImpl value,
          $Res Function(_$CategoryProductsErrorImpl) then) =
      __$$CategoryProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$CategoryProductsErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsErrorImpl>
    implements _$$CategoryProductsErrorImplCopyWith<$Res> {
  __$$CategoryProductsErrorImplCopyWithImpl(_$CategoryProductsErrorImpl _value,
      $Res Function(_$CategoryProductsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$CategoryProductsErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$CategoryProductsErrorImpl implements CategoryProductsError {
  const _$CategoryProductsErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'CategoryState.categoryProductsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => __$$CategoryProductsErrorImplCopyWithImpl<
          _$CategoryProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String?>? categoriesList) categoriesSuccess,
    required TResult Function(ErrorHandler errorHandler) categoriesError,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<CategoryResponseModel?>? productsList)
        categoryProductsSuccess,
    required TResult Function(ErrorHandler errorHandler) categoryProductsError,
  }) {
    return categoryProductsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoriesError,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryProductsError,
  }) {
    return categoryProductsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String?>? categoriesList)? categoriesSuccess,
    TResult Function(ErrorHandler errorHandler)? categoriesError,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<CategoryResponseModel?>? productsList)?
        categoryProductsSuccess,
    TResult Function(ErrorHandler errorHandler)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsError implements CategoryState {
  const factory CategoryProductsError(final ErrorHandler errorHandler) =
      _$CategoryProductsErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
