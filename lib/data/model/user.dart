import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object {
  @JsonKey(name: 'meta')
  Meta? meta;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  List<Data>? data;

  User(
      this.code,
      this.meta,
      this.data
      );

  factory User.fromJson(Map<String, dynamic> srcJson) =>
      _$UserFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'gender')
  String? gender;

  @JsonKey(name: 'status')
  String? status;

  Data(
      this.name,
      this.email,
      this.gender,
      this.status,
      );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Meta extends Object {
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  Meta(this.pagination);

  factory Meta.fromJson(Map<String, dynamic> srcJson) =>
      _$MetaFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Pagination extends Object {
  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'pages')
  int pages;

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'limit')
  int limit;

  Pagination(
      this.total,
      this.pages,
      this.page,
      this.limit,
      );

  factory Pagination.fromJson(Map<String, dynamic> srcJson) =>
      _$PaginationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}