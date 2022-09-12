class Feeds {
  List<Feed>? feeds;

  Feeds({this.feeds});

  Feeds.fromJson(Map<String, dynamic> json) {
    if (json['feeds'] != null) {
      feeds = <Feed>[];
      json['feeds'].forEach((v) {
        feeds!.add(Feed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (feeds != null) {
      data['feeds'] = feeds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Feed {
  int? commentCount;
  bool? downloadable;
  bool? pinned;
  int? allowedFriendsCount;
  DateTime? createdAt;
  int? withTagCount;
  bool? sharable;
  List<ClosestWithTags>? closestWithTags;
  List<Media>? media;
  String? content;
  bool? required;
  bool? liked;
  String? feedId;
  String? sid;
  bool? sympathized;
  Scrap? scrap;
  List<ContentDecorators>? contentDecorators;
  String? nextCallForActivityRecommend;
  DateTime? updatedAt;
  String? mediaType;
  String? activityType;
  String? id;
  LocationTag? locationTag;
  bool? modifiable;
  bool? blinded;
  List<Likes>? likes;
  String? summary;
  int? likeCount;
  List<Comments>? comments;
  String? verb;
  String? permission;
  bool? commentAllWritable;
  bool? hasUnreadReaction;
  String? likedEmotion;
  int? shareCount;
  Actor? actor;
  bool? pushMute;
  bool? withMe;
  String? permalink;
  int? viewCount;

  Feed(
      {this.commentCount,
      this.downloadable,
      this.pinned,
      this.allowedFriendsCount,
      this.createdAt,
      this.withTagCount,
      this.sharable,
      this.closestWithTags,
      this.media,
      this.content,
      this.required,
      this.liked,
      this.feedId,
      this.sid,
      this.sympathized,
      this.scrap,
      this.contentDecorators,
      this.nextCallForActivityRecommend,
      this.updatedAt,
      this.mediaType,
      this.activityType,
      this.id,
      this.locationTag,
      this.modifiable,
      this.blinded,
      this.likes,
      this.summary,
      this.likeCount,
      this.comments,
      this.verb,
      this.permission,
      this.commentAllWritable,
      this.hasUnreadReaction,
      this.likedEmotion,
      this.shareCount,
      this.actor,
      this.pushMute,
      this.withMe,
      this.permalink,
      this.viewCount});

  Feed.fromJson(Map<String, dynamic> json) {
    commentCount = json['comment_count'];
    downloadable = json['downloadable'];
    pinned = json['pinned'];
    allowedFriendsCount = json['allowed_friends_count'];
    createdAt = DateTime.parse(json['created_at']).add(const Duration(hours: 9));
    withTagCount = json['with_tag_count'];
    sharable = json['sharable'];
    if (json['closest_with_tags'] != null) {
      closestWithTags = <ClosestWithTags>[];
      json['closest_with_tags'].forEach((v) {
        closestWithTags!.add(ClosestWithTags.fromJson(v));
      });
    }
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    content = json['content'];
    required = json['required'];
    liked = json['liked'];
    feedId = json['feed_id'];
    sid = json['sid'];
    sympathized = json['sympathized'];
    scrap = json['scrap'] != null ? Scrap.fromJson(json['scrap']) : null;
    if (json['content_decorators'] != null) {
      contentDecorators = <ContentDecorators>[];
      json['content_decorators'].forEach((v) {
        contentDecorators!.add(ContentDecorators.fromJson(v));
      });
    }
    nextCallForActivityRecommend = json['next_call_for_activity_recommend'];
    updatedAt = DateTime.parse(json['updated_at']).add(const Duration(hours: 9));
    mediaType = json['media_type'];
    activityType = json['activity_type'];
    id = json['id'];
    locationTag = json['location_tag'] != null ? LocationTag.fromJson(json['location_tag']) : null;
    modifiable = json['modifiable'];
    blinded = json['blinded'];
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(Likes.fromJson(v));
      });
    }
    summary = json['summary'];
    likeCount = json['like_count'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
    verb = json['verb'];
    permission = json['permission'];
    commentAllWritable = json['comment_all_writable'];
    hasUnreadReaction = json['has_unread_reaction'];
    likedEmotion = json['liked_emotion'];
    shareCount = json['share_count'];
    actor = json['actor'] != null ? Actor.fromJson(json['actor']) : null;
    pushMute = json['push_mute'];
    withMe = json['with_me'];
    permalink = json['permalink'];
    viewCount = json['view_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['comment_count'] = commentCount;
    data['downloadable'] = downloadable;
    data['pinned'] = pinned;
    data['created_at'] = createdAt;
    data['with_tag_count'] = withTagCount;
    data['sharable'] = sharable;
    if (closestWithTags != null) {
      data['closest_with_tags'] = closestWithTags!.map((v) => v.toJson()).toList();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    data['content'] = content;
    data['required'] = required;
    data['liked'] = liked;
    data['feed_id'] = feedId;
    data['sid'] = sid;
    data['next_call_for_activity_recommend'] = nextCallForActivityRecommend;
    data['updated_at'] = updatedAt;
    data['media_type'] = mediaType;
    data['activity_type'] = activityType;
    data['id'] = id;
    if (locationTag != null) {
      data['location_tag'] = locationTag!.toJson();
    }
    data['modifiable'] = modifiable;
    data['blinded'] = blinded;
    if (likes != null) {
      data['likes'] = likes!.map((v) => v.toJson()).toList();
    }
    data['summary'] = summary;
    data['like_count'] = likeCount;
    if (comments != null) {
      data['comments'] = comments!.map((v) => v.toJson()).toList();
    }
    data['verb'] = verb;
    data['permission'] = permission;
    data['comment_all_writable'] = commentAllWritable;
    data['has_unread_reaction'] = hasUnreadReaction;
    data['liked_emotion'] = likedEmotion;
    data['share_count'] = shareCount;
    if (actor != null) {
      data['actor'] = actor!.toJson();
    }
    data['push_mute'] = pushMute;
    data['with_me'] = withMe;
    data['permalink'] = permalink;
    data['view_count'] = viewCount;
    return data;
  }
}

class ClosestWithTags {
  String? profileThumbnailUrl;
  String? id;
  String? displayName;
  String? relationship;
  String? type;
  bool? isBirthday;

  ClosestWithTags({this.profileThumbnailUrl, this.id, this.displayName, this.relationship, this.type, this.isBirthday});

  ClosestWithTags.fromJson(Map<String, dynamic> json) {
    profileThumbnailUrl = json['profile_thumbnail_url'];
    id = json['id'];
    displayName = json['display_name'];
    relationship = json['relationship'];
    type = json['type'];
    isBirthday = json['is_birthday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profile_thumbnail_url'] = profileThumbnailUrl;
    data['id'] = id;
    data['display_name'] = displayName;
    data['relationship'] = relationship;
    data['type'] = type;
    data['is_birthday'] = isBirthday;
    return data;
  }
}

class ContentDecorators {
  int? itemVer;
  String? itemId;
  int? itemSubType;
  int? resourceId;
  String? text;
  String? type;

  ContentDecorators({this.itemVer, this.itemId, this.itemSubType, this.resourceId, this.text, this.type});

  ContentDecorators.fromJson(Map<String, dynamic> json) {
    itemVer = json['item_ver'];
    itemId = json['item_id'];
    itemSubType = json['item_sub_type'];
    resourceId = json['resource_id'];
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['item_ver'] = itemVer;
    data['item_id'] = itemId;
    data['item_sub_type'] = itemSubType;
    data['resource_id'] = resourceId;
    data['text'] = text;
    data['type'] = type;
    return data;
  }
}

class Media {
  String? url;
  String? previewUrl;
  String? thumbnailUrl2;
  String? thumbnailUrl3;
  String? thumbnailUrl;
  String? originUrl;
  String? url2;
  String? jpgUrl;
  String? key;
  String? contentType;
  int? width;
  int? height;
  String? mediaPath;
  String? sqUrl;
  bool? searchable;
  String? iid;
  bool isVideo = false;

  Media({
    this.url,
    this.previewUrl,
    this.thumbnailUrl2,
    this.thumbnailUrl3,
    this.thumbnailUrl,
    this.originUrl,
    this.url2,
    this.jpgUrl,
    this.key,
    this.contentType,
    this.width,
    this.height,
    this.mediaPath,
    this.sqUrl,
    this.searchable,
    this.iid,
  });

  Media.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    previewUrl = json['preview_url'];
    thumbnailUrl2 = json['thumbnail_url2'];
    thumbnailUrl3 = json['thumbnail_url3'];
    thumbnailUrl = json['thumbnail_url'];
    originUrl = json['origin_url'];
    url2 = json['url2'];
    jpgUrl = json['jpg_url'];
    key = json['key'];
    contentType = json['content_type'];
    width = json['width'];
    height = json['height'];
    mediaPath = json['media_path'];
    sqUrl = json['sq_url'];
    searchable = json['searchable'];
    iid = json['iid'];
    if (previewUrl != null) isVideo = true;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['thumbnail_url2'] = thumbnailUrl2;
    data['thumbnail_url3'] = thumbnailUrl3;
    data['thumbnail_url'] = thumbnailUrl;
    data['origin_url'] = originUrl;
    data['url2'] = url2;
    data['jpg_url'] = jpgUrl;
    data['key'] = key;
    data['content_type'] = contentType;
    data['width'] = width;
    data['height'] = height;
    data['media_path'] = mediaPath;
    data['sq_url'] = sqUrl;
    data['searchable'] = searchable;
    data['iid'] = iid;
    data['is_video'] = isVideo;
    return data;
  }
}

class LocationTag {
  int? friendActivityCount;
  String? distance;
  String? imageUrl;
  double? latitude;
  bool? registered;
  String? locationId;
  int? relatedLocationCount;
  int? popularActivityCount;
  int? visitorCount;
  bool? deleted;
  int? activityCount;
  String? name;
  double? longitude;

  LocationTag(
      {this.friendActivityCount,
      this.distance,
      this.imageUrl,
      this.latitude,
      this.registered,
      this.locationId,
      this.relatedLocationCount,
      this.popularActivityCount,
      this.visitorCount,
      this.deleted,
      this.activityCount,
      this.name,
      this.longitude});

  LocationTag.fromJson(Map<String, dynamic> json) {
    friendActivityCount = json['friend_activity_count'];
    distance = json['distance'];
    imageUrl = json['image_url'];
    latitude = json['latitude'];
    registered = json['registered'];
    locationId = json['location_id'];
    relatedLocationCount = json['related_location_count'];
    popularActivityCount = json['popular_activity_count'];
    visitorCount = json['visitor_count'];
    deleted = json['deleted'];
    activityCount = json['activity_count'];
    name = json['name'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['friend_activity_count'] = friendActivityCount;
    data['distance'] = distance;
    data['image_url'] = imageUrl;
    data['latitude'] = latitude;
    data['registered'] = registered;
    data['location_id'] = locationId;
    data['related_location_count'] = relatedLocationCount;
    data['popular_activity_count'] = popularActivityCount;
    data['visitor_count'] = visitorCount;
    data['deleted'] = deleted;
    data['activity_count'] = activityCount;
    data['name'] = name;
    data['longitude'] = longitude;
    return data;
  }
}

class Likes {
  Actor2? actor;
  String? emotion;
  String? createdAt;
  String? id;
  String? type;

  Likes({this.actor, this.emotion, this.createdAt, this.id, this.type});

  Likes.fromJson(Map<String, dynamic> json) {
    actor = json['actor'] != null ? Actor2.fromJson(json['actor']) : null;
    emotion = json['emotion'];
    createdAt = json['created_at'];
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (actor != null) {
      data['actor'] = actor!.toJson();
    }
    data['emotion'] = emotion;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['type'] = type;
    return data;
  }
}

class Actor2 {
  String? birthday;
  String? bgImageUrl2;
  bool? isFavorite;
  String? gender;
  bool? needVerify;
  bool? birthLeapType;
  String? birthType;
  String? profileImageUrl2;
  String? type;
  int? followerCount;
  bool? isCelebratable;
  int? defaultBgId;
  int? activityCount;
  bool? isValidUser;
  String? id;
  String? relationship;
  bool? vip;
  int? friendCount;
  bool? isBirthday;
  String? bgImageUrl;
  bool? allowFollowing;
  String? profileThumbnailUrl;
  List<StatusObjects>? statusObjects;
  String? birthPermission;
  String? birth;
  String? profileImageUrl;
  String? displayName;
  String? genderPermission;
  String? permalink;
  bool? isDefaultProfileImage;
  bool? isFeedBlocked;

  Actor2(
      {this.birthday,
      this.bgImageUrl2,
      this.isFavorite,
      this.gender,
      this.needVerify,
      this.birthLeapType,
      this.birthType,
      this.profileImageUrl2,
      this.type,
      this.followerCount,
      this.isCelebratable,
      this.defaultBgId,
      this.activityCount,
      this.isValidUser,
      this.id,
      this.relationship,
      this.vip,
      this.friendCount,
      this.isBirthday,
      this.bgImageUrl,
      this.allowFollowing,
      this.profileThumbnailUrl,
      this.statusObjects,
      this.birthPermission,
      this.birth,
      this.profileImageUrl,
      this.displayName,
      this.genderPermission,
      this.permalink,
      this.isDefaultProfileImage,
      this.isFeedBlocked});

  Actor2.fromJson(Map<String, dynamic> json) {
    birthday = json['birthday'];
    bgImageUrl2 = json['bg_image_url2'];
    isFavorite = json['is_favorite'];
    gender = json['gender'];
    needVerify = json['need_verify'];
    birthLeapType = json['birth_leap_type'];
    birthType = json['birth_type'];
    profileImageUrl2 = json['profile_image_url2'];
    type = json['type'];
    followerCount = json['follower_count'];
    isCelebratable = json['is_celebratable'];
    defaultBgId = json['default_bg_id'];
    activityCount = json['activity_count'];
    isValidUser = json['is_valid_user'];
    id = json['id'];
    relationship = json['relationship'];
    vip = json['vip'];
    friendCount = json['friend_count'];
    isBirthday = json['is_birthday'];
    bgImageUrl = json['bg_image_url'];
    allowFollowing = json['allow_following'];
    profileThumbnailUrl = json['profile_thumbnail_url'];
    if (json['status_objects'] != null) {
      statusObjects = <StatusObjects>[];
      json['status_objects'].forEach((v) {
        statusObjects!.add(StatusObjects.fromJson(v));
      });
    }
    birthPermission = json['birth_permission'];
    birth = json['birth'];
    profileImageUrl = json['profile_image_url'];
    displayName = json['display_name'];
    genderPermission = json['gender_permission'];
    permalink = json['permalink'];
    isDefaultProfileImage = json['is_default_profile_image'];
    isFeedBlocked = json['is_feed_blocked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['birthday'] = birthday;
    data['bg_image_url2'] = bgImageUrl2;
    data['is_favorite'] = isFavorite;
    data['gender'] = gender;
    data['need_verify'] = needVerify;
    data['birth_leap_type'] = birthLeapType;
    data['birth_type'] = birthType;
    data['profile_image_url2'] = profileImageUrl2;
    data['type'] = type;
    data['follower_count'] = followerCount;
    data['is_celebratable'] = isCelebratable;
    data['default_bg_id'] = defaultBgId;
    data['activity_count'] = activityCount;
    data['is_valid_user'] = isValidUser;
    data['id'] = id;
    data['relationship'] = relationship;
    data['vip'] = vip;
    data['friend_count'] = friendCount;
    data['is_birthday'] = isBirthday;
    data['bg_image_url'] = bgImageUrl;
    data['allow_following'] = allowFollowing;
    data['profile_thumbnail_url'] = profileThumbnailUrl;
    if (statusObjects != null) {
      data['status_objects'] = statusObjects!.map((v) => v.toJson()).toList();
    }
    data['birth_permission'] = birthPermission;
    data['birth'] = birth;
    data['profile_image_url'] = profileImageUrl;
    data['display_name'] = displayName;
    data['gender_permission'] = genderPermission;
    data['permalink'] = permalink;
    data['is_default_profile_image'] = isDefaultProfileImage;
    data['is_feed_blocked'] = isFeedBlocked;
    return data;
  }
}

class StatusObjects {
  String? objectType;
  String? message;

  StatusObjects({this.objectType, this.message});

  StatusObjects.fromJson(Map<String, dynamic> json) {
    objectType = json['object_type'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['object_type'] = objectType;
    data['message'] = message;
    return data;
  }
}

class Comments {
  int? likeCount;
  List<Decorators>? decorators;
  String? activityId;
  String? index;
  String? createdAt;
  String? id;
  String? text;
  Actor? writer;
  bool? liked;

  Comments({this.likeCount, this.decorators, this.activityId, this.index, this.createdAt, this.id, this.text, this.writer, this.liked});

  Comments.fromJson(Map<String, dynamic> json) {
    likeCount = json['like_count'];
    if (json['decorators'] != null) {
      decorators = <Decorators>[];
      json['decorators'].forEach((v) {
        decorators!.add(Decorators.fromJson(v));
      });
    }
    activityId = json['activity_id'];
    index = json['index'];
    createdAt = json['created_at'];
    id = json['id'];
    text = json['text'];
    writer = json['writer'] != null ? Actor.fromJson(json['writer']) : null;
    liked = json['liked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['like_count'] = likeCount;
    if (decorators != null) {
      data['decorators'] = decorators!.map((v) => v.toJson()).toList();
    }
    data['activity_id'] = activityId;
    data['index'] = index;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['text'] = text;
    if (writer != null) {
      data['writer'] = writer!.toJson();
    }
    data['liked'] = liked;
    return data;
  }
}

class Decorators {
  String? text;
  String? type;

  Decorators({this.text, this.type});

  Decorators.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['type'] = type;
    return data;
  }
}

class Actor {
  String? birthday;
  String? bgImageUrl2;
  bool? isFavorite;
  String? gender;
  bool? needVerify;
  bool? birthLeapType;
  String? birthType;
  String? profileImageUrl2;
  String? type;
  int? followerCount;
  bool? isCelebratable;
  int? defaultBgId;
  int? activityCount;
  bool? isValidUser;
  String? friendAcceptLevel;
  String? id;
  String? relationship;
  bool? vip;
  int? friendCount;
  bool? isBirthday;
  String? bgImageUrl;
  bool? allowFollowing;
  String? profileThumbnailUrl;
  List<StatusObjects>? statusObjects;
  String? birthPermission;
  String? birth;
  String? profileImageUrl;
  String? displayName;
  String? genderPermission;
  String? permalink;
  bool? isDefaultProfileImage;
  bool? isFeedBlocked;

  Actor(
      {this.birthday,
      this.bgImageUrl2,
      this.isFavorite,
      this.gender,
      this.needVerify,
      this.birthLeapType,
      this.birthType,
      this.profileImageUrl2,
      this.type,
      this.followerCount,
      this.isCelebratable,
      this.defaultBgId,
      this.activityCount,
      this.isValidUser,
      this.friendAcceptLevel,
      this.id,
      this.relationship,
      this.vip,
      this.friendCount,
      this.isBirthday,
      this.bgImageUrl,
      this.allowFollowing,
      this.profileThumbnailUrl,
      this.statusObjects,
      this.birthPermission,
      this.birth,
      this.profileImageUrl,
      this.displayName,
      this.genderPermission,
      this.permalink,
      this.isDefaultProfileImage,
      this.isFeedBlocked});

  Actor.fromJson(Map<String, dynamic> json) {
    birthday = json['birthday'];
    bgImageUrl2 = json['bg_image_url2'];
    isFavorite = json['is_favorite'];
    gender = json['gender'];
    needVerify = json['need_verify'];
    birthLeapType = json['birth_leap_type'];
    birthType = json['birth_type'];
    profileImageUrl2 = json['profile_image_url2'];
    type = json['type'];
    followerCount = json['follower_count'];
    isCelebratable = json['is_celebratable'];
    defaultBgId = json['default_bg_id'];
    activityCount = json['activity_count'];
    isValidUser = json['is_valid_user'];
    friendAcceptLevel = json['friend_accept_level'];
    id = json['id'];
    relationship = json['relationship'];
    vip = json['vip'];
    friendCount = json['friend_count'];
    isBirthday = json['is_birthday'];
    bgImageUrl = json['bg_image_url'];
    allowFollowing = json['allow_following'];
    profileThumbnailUrl = json['profile_thumbnail_url'];
    if (json['status_objects'] != null) {
      statusObjects = <StatusObjects>[];
      json['status_objects'].forEach((v) {
        statusObjects!.add(StatusObjects.fromJson(v));
      });
    }
    birthPermission = json['birth_permission'];
    birth = json['birth'];
    profileImageUrl = json['profile_image_url'];
    displayName = json['display_name'];
    genderPermission = json['gender_permission'];
    permalink = json['permalink'];
    isDefaultProfileImage = json['is_default_profile_image'];
    isFeedBlocked = json['is_feed_blocked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['birthday'] = birthday;
    data['bg_image_url2'] = bgImageUrl2;
    data['is_favorite'] = isFavorite;
    data['gender'] = gender;
    data['need_verify'] = needVerify;
    data['birth_leap_type'] = birthLeapType;
    data['birth_type'] = birthType;
    data['profile_image_url2'] = profileImageUrl2;
    data['type'] = type;
    data['follower_count'] = followerCount;
    data['is_celebratable'] = isCelebratable;
    data['default_bg_id'] = defaultBgId;
    data['activity_count'] = activityCount;
    data['is_valid_user'] = isValidUser;
    data['friend_accept_level'] = friendAcceptLevel;
    data['id'] = id;
    data['relationship'] = relationship;
    data['vip'] = vip;
    data['friend_count'] = friendCount;
    data['is_birthday'] = isBirthday;
    data['bg_image_url'] = bgImageUrl;
    data['allow_following'] = allowFollowing;
    data['profile_thumbnail_url'] = profileThumbnailUrl;
    if (statusObjects != null) {
      data['status_objects'] = statusObjects!.map((v) => v.toJson()).toList();
    }
    data['birth_permission'] = birthPermission;
    data['birth'] = birth;
    data['profile_image_url'] = profileImageUrl;
    data['display_name'] = displayName;
    data['gender_permission'] = genderPermission;
    data['permalink'] = permalink;
    data['is_default_profile_image'] = isDefaultProfileImage;
    data['is_feed_blocked'] = isFeedBlocked;
    return data;
  }
}

class Scrap {
  String? title;
  String? description;
  String? url;
  String? type;
  bool? isOpengraph;
  String? host;
  String? requestedUrl;
  List<String>? image;
  String? siteName;
  String? section;
  String? destUrl;

  Scrap(
      {this.title,
      this.description,
      this.url,
      this.type,
      this.isOpengraph,
      this.host,
      this.requestedUrl,
      this.image,
      this.siteName,
      this.section,
      this.destUrl});

  Scrap.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    type = json['type'];
    isOpengraph = json['is_opengraph'];
    host = json['host'];
    requestedUrl = json['requested_url'];
    image = json['image'].cast<String>();
    siteName = json['site_name'];
    section = json['section'];
    destUrl = json['dest_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['type'] = type;
    data['is_opengraph'] = isOpengraph;
    data['host'] = host;
    data['requested_url'] = requestedUrl;
    data['image'] = image;
    data['site_name'] = siteName;
    data['section'] = section;
    data['dest_url'] = destUrl;
    return data;
  }
}
