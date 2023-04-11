class GetAllLite {
  String? categories;
  String? commonNameFr;
  String? img;
  String? family;
  String? latinName;
  String? description;
  // List<String>? origin;
  // List<String>? zone;
  // List<String>? commonName;
  String? otherNames;
  String? id;
  String? climat;

  GetAllLite(
      {required this.categories,
      required this.commonNameFr,
      required this.img,
      required this.family,
      required this.latinName,
      required this.description,
      // required this.origin,
      // required this.zone,
      // required this.commonName,
      required this.otherNames,
      required this.id,
      required this.climat});

  GetAllLite.fromJson(Map<String, dynamic> json) {
    categories = json['Categories'];
    commonNameFr = json['Common name (fr.)'];
    img = json['Img'];
    family = json['Family'];
    latinName = json['Latin name'];
    description = json['Description'];
    // origin = json['Origin'].cast<String>();
    // zone = json['Zone'].cast<String>();
    // commonName = json['Common name'].cast<String>();
    otherNames = json['Other names'];
    id = json['id'];
    climat = json['Climat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Categories'] = categories;
    data['Common name (fr.)'] = commonNameFr;
    data['Img'] = img;
    data['Family'] = family;
    data['Latin name'] = latinName;
    data['Description'] = description;
    // data['Origin'] = origin;
    // data['Zone'] = zone;
    // data['Common name'] = commonName;
    data['Other names'] = otherNames;
    data['id'] = id;
    data['Climat'] = climat;
    return data;
  }
}
