class SearchModel {
  List<Locations>? locations;
  Meta? meta;
  int? lastRefresh;
  int? resultsRetrieved;

  SearchModel(
      {this.locations, this.meta, this.lastRefresh, this.resultsRetrieved});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    lastRefresh = json['last_refresh'];
    resultsRetrieved = json['results_retrieved'];
  }

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
  // List<Special>? special;
  // List<TouristRegion>? touristRegion;
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
        // this.special,
        // this.touristRegion,
        this.carRentals,
        this.newGround,
        this.routingPriority,
        this.type});

  Locations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    intId = json['int_id'];
    airportIntId = json['airport_int_id'];
    active = json['active'];
    code = json['code'];
    icao = json['icao'];
    name = json['name'];
    slug = json['slug'];
    slugEn = json['slug_en'];
    alternativeNames = json['alternative_names'].cast<String>();
    rank = json['rank'];
    globalRankDst = json['global_rank_dst'];
    dstPopularityScore = json['dst_popularity_score'];
    timezone = json['timezone'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    if (json['alternative_departure_points'] != null) {
      alternativeDeparturePoints = <AlternativeDeparturePoints>[];
      json['alternative_departure_points'].forEach((v) {
        alternativeDeparturePoints!
            .add(AlternativeDeparturePoints.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    providers = json['providers'].cast<int>();
    // if (json['special'] != null) {
    //   special = <Special>[];
    //   json['special'].forEach((v) {
    //     special!.add(Special.fromJson(v));
    //   });
    // }
    // if (json['tourist_region'] != null) {
    //   touristRegion = <TouristRegion>[];
    //   json['tourist_region'].forEach((v) {
    //     touristRegion!.add(TouristRegion.fromJson(v));
    //   });
    // }
    if (json['car_rentals'] != null) {
      carRentals = <CarRentals>[];
      json['car_rentals'].forEach((v) {
        carRentals!.add(CarRentals.fromJson(v));
      });
    }
    newGround = json['new_ground'];
    routingPriority = json['routing_priority'];
    type = json['type'];
  }
}

class City {
  String? id;
  String? name;
  String? code;
  String? slug;
  Region? region;
  Country? country;
  Null? nearbyCountry;
  Country? subdivision;
  Country? continent;
  Null? autonomousTerritory;

  City(
      {this.id,
        this.name,
        this.code,
        this.slug,
        this.region,
        this.country,
        this.nearbyCountry,
        this.subdivision,
        this.continent,
        this.autonomousTerritory});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    slug = json['slug'];
    region =
    json['region'] != null ? Region.fromJson(json['region']) : null;
    country =
    json['country'] != null ? Country.fromJson(json['country']) : null;
    nearbyCountry = json['nearby_country'];
    subdivision = json['subdivision'] != null
        ? Country.fromJson(json['subdivision'])
        : null;
    continent = json['continent'] != null
        ? Country.fromJson(json['continent'])
        : null;
    autonomousTerritory = json['autonomous_territory'];
  }
}

class Region {
  String? id;
  String? name;
  String? slug;

  Region({this.id, this.name, this.slug});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

}

class Country {
  String? id;
  String? name;
  String? slug;
  String? code;

  Country({this.id, this.name, this.slug, this.code});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    code = json['code'];
  }
}

class Location {
  double? lat;
  double? lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }
}

class AlternativeDeparturePoints {
  String? id;
  double? distance;
  double? duration;

  AlternativeDeparturePoints({this.id, this.distance, this.duration});

  AlternativeDeparturePoints.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    distance = json['distance'];
    duration = json['duration'];
  }
}

class Tags {
  String? tag;
  int? monthTo;
  int? monthFrom;

  Tags({this.tag, this.monthTo, this.monthFrom});

  Tags.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    monthTo = json['month_to'];
    monthFrom = json['month_from'];
  }
}

class CarRentals {
  int? providerId;
  List<String>? providersLocations;

  CarRentals({this.providerId, this.providersLocations});

  CarRentals.fromJson(Map<String, dynamic> json) {
    providerId = json['provider_id'];
    providersLocations = json['providers_locations'].cast<String>();
  }
}

class Meta {
  Locale? locale;

  Meta({this.locale});

  Meta.fromJson(Map<String, dynamic> json) {
    locale =
    json['locale'] != null ? Locale.fromJson(json['locale']) : null;
  }
}

class Locale {
  String? code;
  String? status;

  Locale({this.code, this.status});

  Locale.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
  }
}
