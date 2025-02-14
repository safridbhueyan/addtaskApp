class Model {
  Ecommerce? ecommerce;

  Model({this.ecommerce});

  Model.fromJson(Map<String, dynamic> json) {
    ecommerce = json['ecommerce'] != null
        ? new Ecommerce.fromJson(json['ecommerce'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ecommerce != null) {
      data['ecommerce'] = this.ecommerce!.toJson();
    }
    return data;
  }
}

class Ecommerce {
  String? platform;
  String? url;
  List<Categories>? categories;
  List<Users>? users;

  Ecommerce({this.platform, this.url, this.categories, this.users});

  Ecommerce.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    url = json['url'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['platform'] = this.platform;
    data['url'] = this.url;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  String? image;
  List<Products>? products;

  Categories({this.id, this.name, this.image, this.products});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? name;
  String? brand;
  double? price;
  String? currency;
  int? stock;
  String? description;
  List<String>? images;
  Specifications? specifications;
  List<Reviews>? reviews;
  List<String>? sizes;

  Products(
      {this.id,
      this.name,
      this.brand,
      this.price,
      this.currency,
      this.stock,
      this.description,
      this.images,
      this.specifications,
      this.reviews,
      this.sizes});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    price = json['price'];
    currency = json['currency'];
    stock = json['stock'];
    description = json['description'];
    images = json['images'].cast<String>();
    specifications = json['specifications'] != null
        ? new Specifications.fromJson(json['specifications'])
        : null;
    if (json['reviews'] != null) {
      reviews = <Reviews>[];
      json['reviews'].forEach((v) {
        reviews!.add(new Reviews.fromJson(v));
      });
    }
    sizes = json['sizes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['brand'] = this.brand;
    data['price'] = this.price;
    data['currency'] = this.currency;
    data['stock'] = this.stock;
    data['description'] = this.description;
    data['images'] = this.images;
    if (this.specifications != null) {
      data['specifications'] = this.specifications!.toJson();
    }
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    data['sizes'] = this.sizes;
    return data;
  }
}

class Specifications {
  String? screenSize;
  String? battery;
  String? processor;
  Camera? camera;
  String? ram;
  String? storage;

  Specifications(
      {this.screenSize,
      this.battery,
      this.processor,
      this.camera,
      this.ram,
      this.storage});

  Specifications.fromJson(Map<String, dynamic> json) {
    screenSize = json['screen_size'];
    battery = json['battery'];
    processor = json['processor'];
    camera =
        json['camera'] != null ? new Camera.fromJson(json['camera']) : null;
    ram = json['ram'];
    storage = json['storage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['screen_size'] = this.screenSize;
    data['battery'] = this.battery;
    data['processor'] = this.processor;
    if (this.camera != null) {
      data['camera'] = this.camera!.toJson();
    }
    data['ram'] = this.ram;
    data['storage'] = this.storage;
    return data;
  }
}

class Camera {
  String? rear;
  String? front;

  Camera({this.rear, this.front});

  Camera.fromJson(Map<String, dynamic> json) {
    rear = json['rear'];
    front = json['front'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rear'] = this.rear;
    data['front'] = this.front;
    return data;
  }
}

class Reviews {
  int? userId;
  double? rating;
  String? comment;
  String? date;

  Reviews({this.userId, this.rating, this.comment, this.date});

  Reviews.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    rating = json['rating'];
    comment = json['comment'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['rating'] = this.rating;
    data['comment'] = this.comment;
    data['date'] = this.date;
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? email;
  String? profilePicture;
  List<Orders>? orders;

  Users({this.id, this.name, this.email, this.profilePicture, this.orders});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profilePicture = json['profile_picture'];
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders!.add(new Orders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['profile_picture'] = this.profilePicture;
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Orders {
  int? orderId;
  String? status;
  double? total;
  String? date;
  List<Items>? items;

  Orders({this.orderId, this.status, this.total, this.date, this.items});

  Orders.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    status = json['status'];
    total = json['total'];
    date = json['date'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['status'] = this.status;
    data['total'] = this.total;
    data['date'] = this.date;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? productId;
  int? quantity;

  Items({this.productId, this.quantity});

  Items.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['quantity'] = this.quantity;
    return data;
  }
}
