class GetAll {
  String? categories;
  String? disease;
  List<String>? use;
  String? latinName;
  List<String>? insects;
  String? avaibility;
  String? url;
  String? style;
  String? bearing;
  String? lightTolered;
  HeightAtPurchase? heightAtPurchase;
  String? lightIdeal;
  HeightAtPurchase? widthAtPurchase;
  String? id;
  String? appeal;
  String? img;
  String? perfume;
  String? growth;
  HeightAtPurchase? widthPotential;
  String? commonNameFr;
  String? pruning;
  String? family;
  HeightAtPurchase? heightPotential;
  List<String>? origin;
  String? description;
  String? bloomingSeason;
  List<String>? colorOfLeaf;
  String? watering;
  String? colorOfBlooms;
  List<String>? zone;
  List<String>? commonName;
  String? otherNames;
  String? availableSizesPot;
  Temperature? temperature;
  HeightAtPurchase? potDiameterCm;
  String? climat;

  GetAll(
      {this.categories,
      this.disease,
      this.use,
      this.latinName,
      this.insects,
      this.avaibility,
      this.url,
      this.style,
      this.bearing,
      this.lightTolered,
      this.heightAtPurchase,
      this.lightIdeal,
      this.widthAtPurchase,
      this.id,
      this.appeal,
      this.img,
      this.perfume,
      this.growth,
      this.widthPotential,
      this.commonNameFr,
      this.pruning,
      this.family,
      this.heightPotential,
      this.origin,
      this.description,
      this.bloomingSeason,
      this.colorOfLeaf,
      this.watering,
      this.colorOfBlooms,
      this.zone,
      this.commonName,
      this.availableSizesPot,
      this.otherNames,
      this.temperature,
      this.potDiameterCm,
      this.climat});

  GetAll.fromJson(Map<String, dynamic> json) {
    categories = json['Categories'];
    disease = json['Disease'];
    use = json['Use'].cast<String>();
    latinName = json['Latin name'];
    insects = json['Insects'].cast<String>();
    avaibility = json['Avaibility'];
    url = json['url'];
    style = json['Style'];
    bearing = json['Bearing'];
    lightTolered = json['Light tolered'];
    heightAtPurchase = json['Height at purchase'] != null
        ? new HeightAtPurchase.fromJson(json['Height at purchase'])
        : null;
    lightIdeal = json['Light ideal'];
    widthAtPurchase = json['Width at purchase'] != null
        ? new HeightAtPurchase.fromJson(json['Width at purchase'])
        : null;
    id = json['id'];
    appeal = json['Appeal'];
    img = json['img'];
    perfume = json['Perfume'];
    growth = json['Growth'];
    widthPotential = json['Width potential'] != null
        ? new HeightAtPurchase.fromJson(json['Width potential'])
        : null;
    commonNameFr = json['Common name (fr.)'];
    pruning = json['Pruning'];
    family = json['Family'];
    heightPotential = json['Height potential'] != null
        ? new HeightAtPurchase.fromJson(json['Height potential'])
        : null;
    origin = json['Origin'].cast<String>();
    description = json['Description'];
    bloomingSeason = json['Blooming season'];
    colorOfLeaf = json['Color of leaf'].cast<String>();
    watering = json['Watering'];
    colorOfBlooms = json['Color of blooms'];
    zone = json['Zone'].cast<String>();
    commonName = json['Common name'].cast<String>();
    availableSizesPot = json['Available sizes (Pot)'];
    otherNames = json['Other names'];
    temperature = json['Temperature'] != null
        ? new Temperature.fromJson(json['Temperature'])
        : null;
    potDiameterCm = json['Pot diameter (cm)'] != null
        ? new HeightAtPurchase.fromJson(json['Pot diameter (cm)'])
        : null;
    climat = json['Climat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Categories'] = this.categories;
    data['Disease'] = this.disease;
    data['Use'] = this.use;
    data['Latin name'] = this.latinName;
    data['Insects'] = this.insects;
    data['Avaibility'] = this.avaibility;
    data['url'] = this.url;
    data['Style'] = this.style;
    data['Bearing'] = this.bearing;
    data['Light tolered'] = this.lightTolered;
    if (this.heightAtPurchase != null) {
      data['Height at purchase'] = this.heightAtPurchase!.toJson();
    }
    data['Light ideal'] = this.lightIdeal;
    if (this.widthAtPurchase != null) {
      data['Width at purchase'] = this.widthAtPurchase!.toJson();
    }
    data['id'] = this.id;
    data['Appeal'] = this.appeal;
    data['img'] = this.img;
    data['Perfume'] = this.perfume;
    data['Growth'] = this.growth;
    if (this.widthPotential != null) {
      data['Width potential'] = this.widthPotential!.toJson();
    }
    data['Common name (fr.)'] = this.commonNameFr;
    data['Pruning'] = this.pruning;
    data['Family'] = this.family;
    if (this.heightPotential != null) {
      data['Height potential'] = this.heightPotential!.toJson();
    }
    data['Origin'] = this.origin;
    data['Description'] = this.description;
    data['Blooming season'] = this.bloomingSeason;
    data['Color of leaf'] = this.colorOfLeaf;
    data['Watering'] = this.watering;
    data['Color of blooms'] = this.colorOfBlooms;
    data['Zone'] = this.zone;
    data['Common name'] = this.commonName;
    data['Available sizes (Pot)'] = this.availableSizesPot;
    data['Other names'] = this.otherNames;
    if (this.temperature != null) {
      data['Temperature'] = this.temperature!.toJson();
    }
    if (this.potDiameterCm != null) {
      data['Pot diameter (cm)'] = this.potDiameterCm!.toJson();
    }
    data['Climat'] = this.climat;
    return data;
  }
}

class HeightAtPurchase {
  double? m;
  int? cm;

  HeightAtPurchase({this.m, this.cm});

  HeightAtPurchase.fromJson(Map<String, dynamic> json) {
    m = json['m'];
    cm = json['cm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['m'] = this.m;
    data['cm'] = this.cm;
    return data;
  }
}

class Temperature {
  int? f;
  int? c;

  Temperature({this.f, this.c});

  Temperature.fromJson(Map<String, dynamic> json) {
    f = json['F'];
    c = json['C'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['F'] = this.f;
    data['C'] = this.c;
    return data;
  }
}
