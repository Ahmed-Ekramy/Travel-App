class SearchModel {
  List<Locations>? locations;
  Meta? meta;
  int? lastRefresh;
  int? resultsRetrieved;

  SearchModel(
      {this.locations, this.meta, this.lastRefresh, this.resultsRetrieved});
}

class Locations {
  String? id;
  int? intId;
  int? airportIntId;
  bool? active;
  String? code;
  String? icao;
  String? name;
  String? slug;
  String? slugEn;
  List<String>? alternativeNames;
  int? rank;
  int? globalRankDst;
  int? dstPopularityScore;
  String? timezone;
  City? city;
  Location? location;
  List<AlternativeDeparturePoints>? alternativeDeparturePoints;
  List<Tags>? tags;
  List<int>? providers;
  List<CarRentals>? carRentals;
  bool? newGround;
  int? routingPriority;
  String? type;

  Locations(
      {this.id,
        this.intId,
        this.airportIntId,
        this.active,
        this.code,
        this.icao,
        this.name,
        this.slug,
        this.slugEn,
        this.alternativeNames,
        this.rank,
        this.globalRankDst,
        this.dstPopularityScore,
        this.timezone,
        this.city,
        this.location,
        this.alternativeDeparturePoints,
        this.tags,
        this.providers,
        this.carRentals,
        this.newGround,
        this.routingPriority,
        this.type});

}

class City {
  String? id;
  String? name;
  String? code;
  String? slug;
  Region? region;
  Country? country;
  Country? subdivision;
  Country? continent;


  City(
      {this.id,
        this.name,
        this.code,
        this.slug,
        this.region,
        this.country,
        this.subdivision,
        this.continent,
        });
}

class Region {
  String? id;
  String? name;
  String? slug;

  Region({this.id, this.name, this.slug});
}

class Country {
  String? id;
  String? name;
  String? slug;
  String? code;

  Country({this.id, this.name, this.slug, this.code});

}

class Location {
  double? lat;
  double? lon;

  Location({this.lat, this.lon});
}

class AlternativeDeparturePoints {
  String? id;
  double? distance;
  double? duration;

  AlternativeDeparturePoints({this.id, this.distance, this.duration});

}

class Tags {
  String? tag;
  int? monthTo;
  int? monthFrom;

  Tags({this.tag, this.monthTo, this.monthFrom});

}

class CarRentals {
  int? providerId;
  List<String>? providersLocations;

  CarRentals({this.providerId, this.providersLocations});

}

class Meta {
  Locale? locale;

  Meta({this.locale});

}

class Locale {
  String? code;
  String? status;

  Locale({this.code, this.status});

}
