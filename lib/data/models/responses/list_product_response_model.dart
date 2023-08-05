import 'dart:convert';

class ListProductResponseModel {
  List<Product>? data;
  Meta meta;

  ListProductResponseModel({
    required this.data,
    required this.meta,
  });

  factory ListProductResponseModel.fromRawJson(String str) =>
      ListProductResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListProductResponseModel.fromJson(Map<String, dynamic> json) =>
      ListProductResponseModel(
        data: List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Product {
  int id;
  DatumAttributes attributes;

  Product({
    required this.id,
    required this.attributes,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        attributes: DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DatumAttributes {
  String name;
  String? description;
  int stock;
  int price;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  Images images;

  DatumAttributes({
    required this.name,
    this.description,
    required this.price,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.images,
  });

  factory DatumAttributes.fromRawJson(String str) =>
      DatumAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
        name: json["name"],
        description: json["description"],
        stock: json["stock"],
        price: json["price"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "stock": stock,
        "price": price,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "images": images.toJson(),
      };
}

class Images {
  Data? data;

  Images({
    this.data,
  });

  factory Images.fromRawJson(String str) => Images.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  int id;
  DataAttributes attributes;

  Data({
    required this.id,
    required this.attributes,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DataAttributes {
  String name;
  dynamic? alternativeText;
  dynamic? caption;
  int width;
  int height;
  // Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic? previewUrl;
  String provider;
  dynamic? providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  DataAttributes({
    required this.name,
    this.alternativeText,
    this.caption,
    required this.width,
    required this.height,
    // required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    this.previewUrl,
    required this.provider,
    this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DataAttributes.fromRawJson(String str) =>
      DataAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        // formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        // "formats": formats.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

// class Formats {
//   Medium thumbnail;
//   // Medium? medium;
//   Medium small;

//   Formats({
//     required this.thumbnail,
//     //  this.medium,
//     required this.small,
//   });

//   factory Formats.fromRawJson(String str) => Formats.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory Formats.fromJson(Map<String, dynamic> json) => Formats(
//         thumbnail: Medium.fromJson(json["thumbnail"]),
//         // medium: Medium.fromJson(json["medium"]),
//         small: Medium.fromJson(json["small"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "thumbnail": thumbnail.toJson(),
//         // "medium": medium?.toJson(),
//         "small": small.toJson(),
//       };
// }

class Medium {
  String name;
  String hash;
  String ext;
  String mime;
  dynamic? path;
  int width;
  int height;
  double size;
  String url;

  Medium({
    required this.name,
    required this.hash,
    required this.ext,
    required this.mime,
    this.path,
    required this.width,
    required this.height,
    required this.size,
    required this.url,
  });

  factory Medium.fromRawJson(String str) => Medium.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
      };
}

class Meta {
  Pagination pagination;

  Meta({
    required this.pagination,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  int page;
  int pageSize;
  int pageCount;
  int total;

  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory Pagination.fromRawJson(String str) =>
      Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
