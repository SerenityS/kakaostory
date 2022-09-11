class UploadedImageProp {
  static Original? original;
  static Xlarge? xlarge;
  static Large? large;
  static Medium? medium;
  static Small? small;
  static Fs? fs;
  static Frame? frame;
  static Face? face;
  static String? access_key;
  static Info? info;
}

class Original {
  Original();
  String? finalname;
  int? length;
  String? content_type;
  int? width;
  int? height;
  String? avg;
}

class Xlarge {
  Xlarge();
  String? filename;
  int? length;
  String? contentType;
  int? width;
  int? height;
}

class Large {
  Large();
  String? filename;
  int? length;
  String? contentType;
  int? width;
  int? height;
}

class Medium {
  Medium();
  String? filename;
  int? length;
  String? contentType;
  int? width;
  int? height;
}

class Small {
  Small();
  String? filename;
  int? length;
  String? contentType;
  int? width;
  int? height;
}

class Fs {
  Fs();
  String? filename;
  int? length;
  String? contentType;
  int? width;
  int? height;
}

class Frame {
  Frame();
  int? x1;
  int? y1;
  int? x2;
  int? y2;
}

class Face {
  Face();
  Frame? frame;
  List? faces;
}

class Info {
  Info();
  Original? original;
  Xlarge? xlarge;
  Large? large;
  Medium? medium;
  Fs? fs;
  Face? face;
}
