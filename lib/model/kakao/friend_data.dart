class FriendData {
  Relation relation = Relation();
  Profile profile = Profile();
  Friends friends = Friends();
}

class Relation {
  Relation();
  bool? feed_blocked;
  String? friend;
  bool? self;
  String? follow;
  bool? favorite;
}

class Profile {
  Profile();
  bool? message_rejectee;
  bool? is_favorite;
  bool? allow_following;
  String? profile_thumbnail_url;
  bool? message_sendable;
  String? type;
  String? display_name;
  Relation? relation;
  bool? is_valid_user;
  String? id;
  String? relationship;
  bool? vip;
  bool? is_feed_blocked;
  bool? is_birthday;
  String? profile_video_url_hq;
  String? profile_video_url_square;
  String? profile_video_url_square_micro_small;
  String? profile_video_url_square_small;
  int? recently_with_friends_priority;
  String? profile_video_url_lq;
  bool? message_received_bomb;
  int? message_receiver_priority;
  bool? blocked;
}

class Friends {
  Friends();
  List<Profile>? profiles;
  int? invitation_count;
}
