class MainMethood {
  bool? success;
  Result? result;

  MainMethood({this.success, this.result});

  MainMethood.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? totalPages;
  List<Data>? data;
  int? limit;
  int? currentPage;

  Result({this.totalPages, this.data, this.limit, this.currentPage});

  Result.fromJson(Map<String, dynamic> json) {
    totalPages = json['totalPages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    limit = json['limit'];
    currentPage = json['currentPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalPages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['limit'] = this.limit;
    data['currentPage'] = this.currentPage;
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? image;
  List<Genre>? genre;
  Genre? region;
  List<Tags>? tags;
  Genre? platform;
  int? sellingPrice;
  bool? isKid;
  String? description;
  String? type;
  bool? show;
  int? rents;
  int? averageRentTime;
  String? code;
  int? level;
  int? quantity;
  String? createdAt;
  String? updatedAt;
  int? inStock;
  int? allStocks;

  Data(
      {this.sId,
      this.title,
      this.image,
      this.genre,
      this.region,
      this.tags,
      this.platform,
      this.sellingPrice,
      this.isKid,
      this.description,
      this.type,
      this.show,
      this.rents,
      this.averageRentTime,
      this.code,
      this.level,
      this.quantity,
      this.createdAt,
      this.updatedAt,
      this.inStock,
      this.allStocks});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    image = json['image'];
    if (json['genre'] != null) {
      genre = <Genre>[];
      json['genre'].forEach((v) {
        genre!.add(new Genre.fromJson(v));
      });
    }
    region = json['region'] != null ? new Genre.fromJson(json['region']) : null;
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    platform =
        json['platform'] != null ? new Genre.fromJson(json['platform']) : null;
    sellingPrice = json['sellingPrice'];
    isKid = json['isKid'];
    description = json['description'];
    type = json['type'];
    show = json['show'];
    rents = json['rents'];
    averageRentTime = json['averageRentTime'];
    code = json['code'];
    level = json['level'];
    quantity = json['quantity'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    inStock = json['inStock'];
    allStocks = json['allStocks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['image'] = this.image;
    if (this.genre != null) {
      data['genre'] = this.genre!.map((v) => v.toJson()).toList();
    }
    if (this.region != null) {
      data['region'] = this.region!.toJson();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.platform != null) {
      data['platform'] = this.platform!.toJson();
    }
    data['sellingPrice'] = this.sellingPrice;
    data['isKid'] = this.isKid;
    data['description'] = this.description;
    data['type'] = this.type;
    data['show'] = this.show;
    data['rents'] = this.rents;
    data['averageRentTime'] = this.averageRentTime;
    data['code'] = this.code;
    data['level'] = this.level;
    data['quantity'] = this.quantity;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['inStock'] = this.inStock;
    data['allStocks'] = this.allStocks;
    return data;
  }
}
class Tags {
  String? sId;
  String? name;

  Tags({this.sId, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Genre {
  String? sId;
  String? title;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Genre({this.sId, this.title, this.createdAt, this.updatedAt, this.iV});

  Genre.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}