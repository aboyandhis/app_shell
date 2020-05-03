class SiteMeta {
  int id;
  String createdAt;
  String updatedAt;
  String author;
  String uRL;
  String description;
  String title;
  String phone;
  String facebook;
  String iG;
  Null linkedIn;
  String twitter;
  Null messenger;
  String gitHub;
  Logo logo;
  Logo avatar;


  SiteMeta(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.author,
      this.uRL,
      this.description,
      this.title,
      this.phone,
      this.facebook,
      this.iG,
      this.linkedIn,
      this.twitter,
      this.messenger,
      this.gitHub,
      this.logo,
      this.avatar,
       });

  SiteMeta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    author = json['Author'];
    uRL = json['URL'];
    description = json['Description'];
    title = json['Title'];
    phone = json['Phone'];
    facebook = json['Facebook'];
    iG = json['IG'];
    linkedIn = json['LinkedIn'];
    twitter = json['Twitter'];
    messenger = json['Messenger'];
    gitHub = json['GitHub'];
    logo = json['Logo'] != null ? new Logo.fromJson(json['Logo']) : null;
    avatar = json['Avatar'] != null ? new Logo.fromJson(json['Avatar']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['Author'] = this.author;
    data['URL'] = this.uRL;
    data['Description'] = this.description;
    data['Title'] = this.title;
    data['Phone'] = this.phone;
    data['Facebook'] = this.facebook;
    data['IG'] = this.iG;
    data['LinkedIn'] = this.linkedIn;
    data['Twitter'] = this.twitter;
    data['Messenger'] = this.messenger;
    data['GitHub'] = this.gitHub;
    if (this.logo != null) {
      data['Logo'] = this.logo.toJson();
    }
    if (this.avatar != null) {
      data['Avatar'] = this.avatar.toJson();
    }
 
    return data;
  }
}

class Logo {
  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  Null previewUrl;
  String provider;
  Null providerMetadata;
  String createdAt;
  String updatedAt;

  Logo(
      {this.id,
      this.name,
      this.alternativeText,
      this.caption,
      this.width,
      this.height,
      this.formats,
      this.hash,
      this.ext,
      this.mime,
      this.size,
      this.url,
      this.previewUrl,
      this.provider,
      this.providerMetadata,
      this.createdAt,
      this.updatedAt});

  Logo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats =
        json['formats'] != null ? new Formats.fromJson(json['formats']) : null;
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    if (this.formats != null) {
      data['formats'] = this.formats.toJson();
    }
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Formats {
  Small small;
  Small medium;
  Small thumbnail;

  Formats({this.small, this.medium, this.thumbnail});

  Formats.fromJson(Map<String, dynamic> json) {
    small = json['small'] != null ? new Small.fromJson(json['small']) : null;
    medium = json['medium'] != null ? new Small.fromJson(json['medium']) : null;
    thumbnail = json['thumbnail'] != null
        ? new Small.fromJson(json['thumbnail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.small != null) {
      data['small'] = this.small.toJson();
    }
    if (this.medium != null) {
      data['medium'] = this.medium.toJson();
    }
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }
    return data;
  }
}

class Small {
  String ext;
  String url;
  String hash;
  String mime;
  double size;
  int width;
  int height;

  Small(
      {this.ext,
      this.url,
      this.hash,
      this.mime,
      this.size,
      this.width,
      this.height});

  Small.fromJson(Map<String, dynamic> json) {
    ext = json['ext'];
    url = json['url'];
    hash = json['hash'];
    mime = json['mime'];
    size = json['size'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ext'] = this.ext;
    data['url'] = this.url;
    data['hash'] = this.hash;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
