class Emoticon {
  String? id;
  List<Items>? items;
  bool? loggedIn;
  bool? normalCpSupported;
  String? settingsBannerImageUrl;

  Emoticon({this.id, this.items, this.loggedIn, this.normalCpSupported, this.settingsBannerImageUrl});

  Emoticon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    loggedIn = json['logged_in'];
    normalCpSupported = json['normal_cp_supported'];
    settingsBannerImageUrl = json['settings_banner_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['logged_in'] = loggedIn;
    data['normal_cp_supported'] = normalCpSupported;
    data['settings_banner_image_url'] = settingsBannerImageUrl;
    return data;
  }
}

class Items {
  String? id;
  String? title;
  String? editorName;
  int? itemSubType;
  int? version;
  int? count;
  int? expiredAt;
  String? titleImageUrl;
  String? onImageUrl;
  String? offImageUrl;
  bool? isEventItem;

  Items(
      {this.id,
      this.title,
      this.editorName,
      this.itemSubType,
      this.version,
      this.count,
      this.expiredAt,
      this.titleImageUrl,
      this.onImageUrl,
      this.offImageUrl,
      this.isEventItem});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    editorName = json['editor_name'];
    itemSubType = json['item_sub_type'];
    version = json['version'];
    count = json['count'];
    expiredAt = json['expired_at'];
    titleImageUrl = json['title_image_url'];
    onImageUrl = json['on_image_url'];
    offImageUrl = json['off_image_url'];
    isEventItem = json['is_event_item'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['editor_name'] = editorName;
    data['item_sub_type'] = itemSubType;
    data['version'] = version;
    data['count'] = count;
    data['expired_at'] = expiredAt;
    data['title_image_url'] = titleImageUrl;
    data['on_image_url'] = onImageUrl;
    data['off_image_url'] = offImageUrl;
    data['is_event_item'] = isEventItem;
    return data;
  }
}

class EmoticonAuth {
  int? resourceUrlBuildMethod;
  String? host;
  String? base;
  Auth? auth;

  EmoticonAuth({this.resourceUrlBuildMethod, this.host, this.base, this.auth});

  EmoticonAuth.fromJson(Map<String, dynamic> json) {
    resourceUrlBuildMethod = json['resource_url_build_method'];
    host = json['host'];
    base = json['base'];
    auth = json['auth'] != null ? Auth.fromJson(json['auth']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resource_url_build_method'] = resourceUrlBuildMethod;
    data['host'] = host;
    data['base'] = base;
    if (auth != null) {
      data['auth'] = auth!.toJson();
    }
    return data;
  }
}

class Auth {
  String? credential;
  String? signature;
  String? encodedSignature;
  String? path;
  int? expires;

  Auth({this.credential, this.signature, this.path, this.expires});

  Auth.fromJson(Map<String, dynamic> json) {
    credential = json['credential'];
    signature = json['signature'];
    encodedSignature = Uri.encodeComponent(signature!);
    path = json['path'];
    expires = json['expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['credential'] = credential;
    data['signature'] = signature;
    data['encoded_signature'] = encodedSignature;
    data['path'] = path;
    data['expires'] = expires;
    return data;
  }
}
