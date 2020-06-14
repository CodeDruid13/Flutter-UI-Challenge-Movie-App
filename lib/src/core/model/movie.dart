import 'dart:convert';

class Movie {
    Movie({
        this.total,
        this.page,
        this.perPage,
        this.data,
    });

    int total;
    int page;
    int perPage;
    List<Poster> data;

    factory Movie.fromRawJson(String str) => Movie.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        total: json["total"] == null ? null : json["total"],
        page: json["page"] == null ? null : json["page"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        data: json["data"] == null ? null : List<Poster>.from(json["data"].map((x) => Poster.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "page": page == null ? null : page,
        "per_page": perPage == null ? null : perPage,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Poster {
    Poster({
        this.name,
        this.category,
        this.rating,
        this.description,
        this.image,
    });

    String name;
    String category;
    double rating;
    String description;
    String image;

    factory Poster.fromRawJson(String str) => Poster.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Poster.fromJson(Map<String, dynamic> json) => Poster(
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null ? null : json["category"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "category": category == null ? null : category,
        "rating": rating == null ? null : rating,
        "description": description == null ? null : description,
        "image": image == null ? null : image,
    };
}
