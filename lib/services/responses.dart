class Food {
  int total;
  int totalPages;
  List<FoodResult> results;

  Food({
    this.total,
    this.totalPages,
    this.results,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        total: json["total"] == null ? null : json["total"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        results: json["results"] == null
            ? null
            : List<FoodResult>.from(
                json["results"].map((x) => FoodResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "total_pages": totalPages == null ? null : totalPages,
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class FoodResult {
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime promotedAt;
  int width;
  int height;
  String color;
  String description;
  String altDescription;
  Urls urls;
  ResultLinks links;
  List<dynamic> categories;
  int likes;
  bool likedByUser;
  List<dynamic> currentUserCollections;
  User user;
  Sponsorship sponsorship;
  List<Tag> tags;

  FoodResult({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.user,
    this.sponsorship,
    this.tags,
  });

  factory FoodResult.fromJson(Map<String, dynamic> json) => FoodResult(
        id: json["id"] == null ? null : json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null
            ? null
            : DateTime.parse(json["promoted_at"]),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        color: json["color"] == null ? null : json["color"],
        description: json["description"] == null ? null : json["description"],
        altDescription:
            json["alt_description"] == null ? null : json["alt_description"],
        urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
        links:
            json["links"] == null ? null : ResultLinks.fromJson(json["links"]),
        categories: json["categories"] == null
            ? null
            : List<dynamic>.from(json["categories"].map((x) => x)),
        likes: json["likes"] == null ? null : json["likes"],
        likedByUser:
            json["liked_by_user"] == null ? null : json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null
            ? null
            : List<dynamic>.from(
                json["current_user_collections"].map((x) => x)),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        sponsorship: json["sponsorship"] == null
            ? null
            : Sponsorship.fromJson(json["sponsorship"]),
        tags: json["tags"] == null
            ? null
            : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "promoted_at": promotedAt == null ? null : promotedAt.toIso8601String(),
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "color": color == null ? null : color,
        "description": description == null ? null : description,
        "alt_description": altDescription == null ? null : altDescription,
        "urls": urls == null ? null : urls.toJson(),
        "links": links == null ? null : links.toJson(),
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x)),
        "likes": likes == null ? null : likes,
        "liked_by_user": likedByUser == null ? null : likedByUser,
        "current_user_collections": currentUserCollections == null
            ? null
            : List<dynamic>.from(currentUserCollections.map((x) => x)),
        "user": user == null ? null : user.toJson(),
        "sponsorship": sponsorship == null ? null : sponsorship.toJson(),
        "tags": tags == null
            ? null
            : List<dynamic>.from(tags.map((x) => x.toJson())),
      };
}

class ResultLinks {
  String self;
  String html;
  String download;
  String downloadLocation;

  ResultLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory ResultLinks.fromJson(Map<String, dynamic> json) => ResultLinks(
        self: json["self"] == null ? null : json["self"],
        html: json["html"] == null ? null : json["html"],
        download: json["download"] == null ? null : json["download"],
        downloadLocation: json["download_location"] == null
            ? null
            : json["download_location"],
      );

  Map<String, dynamic> toJson() => {
        "self": self == null ? null : self,
        "html": html == null ? null : html,
        "download": download == null ? null : download,
        "download_location": downloadLocation == null ? null : downloadLocation,
      };
}

class Sponsorship {
  List<dynamic> impressionUrls;
  String tagline;
  User sponsor;

  Sponsorship({
    this.impressionUrls,
    this.tagline,
    this.sponsor,
  });

  factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
        impressionUrls: json["impression_urls"] == null
            ? null
            : List<dynamic>.from(json["impression_urls"].map((x) => x)),
        tagline: json["tagline"] == null ? null : json["tagline"],
        sponsor:
            json["sponsor"] == null ? null : User.fromJson(json["sponsor"]),
      );

  Map<String, dynamic> toJson() => {
        "impression_urls": impressionUrls == null
            ? null
            : List<dynamic>.from(impressionUrls.map((x) => x)),
        "tagline": tagline == null ? null : tagline,
        "sponsor": sponsor == null ? null : sponsor.toJson(),
      };
}

class User {
  String id;
  DateTime updatedAt;
  String username;
  String name;
  String firstName;
  String lastName;
  String twitterUsername;
  String portfolioUrl;
  String bio;
  String location;
  UserLinks links;
  ProfileImage profileImage;
  String instagramUsername;
  int totalCollections;
  int totalLikes;
  int totalPhotos;
  bool acceptedTos;

  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        username: json["username"] == null ? null : json["username"],
        name: json["name"] == null ? null : json["name"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        twitterUsername:
            json["twitter_username"] == null ? null : json["twitter_username"],
        portfolioUrl:
            json["portfolio_url"] == null ? null : json["portfolio_url"],
        bio: json["bio"] == null ? null : json["bio"],
        location: json["location"] == null ? null : json["location"],
        links: json["links"] == null ? null : UserLinks.fromJson(json["links"]),
        profileImage: json["profile_image"] == null
            ? null
            : ProfileImage.fromJson(json["profile_image"]),
        instagramUsername: json["instagram_username"] == null
            ? null
            : json["instagram_username"],
        totalCollections: json["total_collections"] == null
            ? null
            : json["total_collections"],
        totalLikes: json["total_likes"] == null ? null : json["total_likes"],
        totalPhotos: json["total_photos"] == null ? null : json["total_photos"],
        acceptedTos: json["accepted_tos"] == null ? null : json["accepted_tos"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "username": username == null ? null : username,
        "name": name == null ? null : name,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "twitter_username": twitterUsername == null ? null : twitterUsername,
        "portfolio_url": portfolioUrl == null ? null : portfolioUrl,
        "bio": bio == null ? null : bio,
        "location": location == null ? null : location,
        "links": links == null ? null : links.toJson(),
        "profile_image": profileImage == null ? null : profileImage.toJson(),
        "instagram_username":
            instagramUsername == null ? null : instagramUsername,
        "total_collections": totalCollections == null ? null : totalCollections,
        "total_likes": totalLikes == null ? null : totalLikes,
        "total_photos": totalPhotos == null ? null : totalPhotos,
        "accepted_tos": acceptedTos == null ? null : acceptedTos,
      };
}

class UserLinks {
  String self;
  String html;
  String photos;
  String likes;
  String portfolio;
  String following;
  String followers;

  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"] == null ? null : json["self"],
        html: json["html"] == null ? null : json["html"],
        photos: json["photos"] == null ? null : json["photos"],
        likes: json["likes"] == null ? null : json["likes"],
        portfolio: json["portfolio"] == null ? null : json["portfolio"],
        following: json["following"] == null ? null : json["following"],
        followers: json["followers"] == null ? null : json["followers"],
      );

  Map<String, dynamic> toJson() => {
        "self": self == null ? null : self,
        "html": html == null ? null : html,
        "photos": photos == null ? null : photos,
        "likes": likes == null ? null : likes,
        "portfolio": portfolio == null ? null : portfolio,
        "following": following == null ? null : following,
        "followers": followers == null ? null : followers,
      };
}

class ProfileImage {
  String small;
  String medium;
  String large;

  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"] == null ? null : json["small"],
        medium: json["medium"] == null ? null : json["medium"],
        large: json["large"] == null ? null : json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small == null ? null : small,
        "medium": medium == null ? null : medium,
        "large": large == null ? null : large,
      };
}

class Tag {
  Type type;
  String title;
  Source source;

  Tag({
    this.type,
    this.title,
    this.source,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        title: json["title"] == null ? null : json["title"],
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : typeValues.reverse[type],
        "title": title == null ? null : title,
        "source": source == null ? null : source.toJson(),
      };
}

class Source {
  Ancestry ancestry;
  String title;
  String subtitle;
  String description;
  String metaTitle;
  String metaDescription;
  CoverPhoto coverPhoto;

  Source({
    this.ancestry,
    this.title,
    this.subtitle,
    this.description,
    this.metaTitle,
    this.metaDescription,
    this.coverPhoto,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        ancestry: json["ancestry"] == null
            ? null
            : Ancestry.fromJson(json["ancestry"]),
        title: json["title"] == null ? null : json["title"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        description: json["description"] == null ? null : json["description"],
        metaTitle: json["meta_title"] == null ? null : json["meta_title"],
        metaDescription:
            json["meta_description"] == null ? null : json["meta_description"],
        coverPhoto: json["cover_photo"] == null
            ? null
            : CoverPhoto.fromJson(json["cover_photo"]),
      );

  Map<String, dynamic> toJson() => {
        "ancestry": ancestry == null ? null : ancestry.toJson(),
        "title": title == null ? null : title,
        "subtitle": subtitle == null ? null : subtitle,
        "description": description == null ? null : description,
        "meta_title": metaTitle == null ? null : metaTitle,
        "meta_description": metaDescription == null ? null : metaDescription,
        "cover_photo": coverPhoto == null ? null : coverPhoto.toJson(),
      };
}

class Ancestry {
  Category type;
  Category category;
  Category subcategory;

  Ancestry({
    this.type,
    this.category,
    this.subcategory,
  });

  factory Ancestry.fromJson(Map<String, dynamic> json) => Ancestry(
        type: json["type"] == null ? null : Category.fromJson(json["type"]),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        subcategory: json["subcategory"] == null
            ? null
            : Category.fromJson(json["subcategory"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type.toJson(),
        "category": category == null ? null : category.toJson(),
        "subcategory": subcategory == null ? null : subcategory.toJson(),
      };
}

class Category {
  Slug slug;
  PrettySlug prettySlug;

  Category({
    this.slug,
    this.prettySlug,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        slug: json["slug"] == null ? null : slugValues.map[json["slug"]],
        prettySlug: json["pretty_slug"] == null
            ? null
            : prettySlugValues.map[json["pretty_slug"]],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug == null ? null : slugValues.reverse[slug],
        "pretty_slug":
            prettySlug == null ? null : prettySlugValues.reverse[prettySlug],
      };
}

enum PrettySlug { FOOD, FRUITS, IMAGES }

final prettySlugValues = EnumValues({
  "Food": PrettySlug.FOOD,
  "Fruits": PrettySlug.FRUITS,
  "Images": PrettySlug.IMAGES
});

enum Slug { FOOD, FRUITS, IMAGES }

final slugValues = EnumValues(
    {"food": Slug.FOOD, "fruits": Slug.FRUITS, "images": Slug.IMAGES});

class CoverPhoto {
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime promotedAt;
  int width;
  int height;
  String color;
  String description;
  String altDescription;
  Urls urls;
  ResultLinks links;
  List<dynamic> categories;
  int likes;
  bool likedByUser;
  List<dynamic> currentUserCollections;
  User user;

  CoverPhoto({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.user,
  });

  factory CoverPhoto.fromJson(Map<String, dynamic> json) => CoverPhoto(
        id: json["id"] == null ? null : json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null
            ? null
            : DateTime.parse(json["promoted_at"]),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        color: json["color"] == null ? null : json["color"],
        description: json["description"] == null ? null : json["description"],
        altDescription:
            json["alt_description"] == null ? null : json["alt_description"],
        urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
        links:
            json["links"] == null ? null : ResultLinks.fromJson(json["links"]),
        categories: json["categories"] == null
            ? null
            : List<dynamic>.from(json["categories"].map((x) => x)),
        likes: json["likes"] == null ? null : json["likes"],
        likedByUser:
            json["liked_by_user"] == null ? null : json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null
            ? null
            : List<dynamic>.from(
                json["current_user_collections"].map((x) => x)),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "promoted_at": promotedAt == null ? null : promotedAt.toIso8601String(),
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "color": color == null ? null : color,
        "description": description == null ? null : description,
        "alt_description": altDescription == null ? null : altDescription,
        "urls": urls == null ? null : urls.toJson(),
        "links": links == null ? null : links.toJson(),
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x)),
        "likes": likes == null ? null : likes,
        "liked_by_user": likedByUser == null ? null : likedByUser,
        "current_user_collections": currentUserCollections == null
            ? null
            : List<dynamic>.from(currentUserCollections.map((x) => x)),
        "user": user == null ? null : user.toJson(),
      };
}

class Urls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"] == null ? null : json["raw"],
        full: json["full"] == null ? null : json["full"],
        regular: json["regular"] == null ? null : json["regular"],
        small: json["small"] == null ? null : json["small"],
        thumb: json["thumb"] == null ? null : json["thumb"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw == null ? null : raw,
        "full": full == null ? null : full,
        "regular": regular == null ? null : regular,
        "small": small == null ? null : small,
        "thumb": thumb == null ? null : thumb,
      };
}

enum Type { SEARCH, LANDING_PAGE }

final typeValues =
    EnumValues({"landing_page": Type.LANDING_PAGE, "search": Type.SEARCH});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
