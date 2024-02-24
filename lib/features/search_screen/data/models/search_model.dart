import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';

class SearchModel extends SearchEntity{
  Meta? meta;
  num? lastRefresh;
  num? resultsRetrieved;

  SearchModel(
      {super.locations, this.meta, this.lastRefresh, this.resultsRetrieved});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['locations'] != null) {
      locations = <Locations>[].cast<LocationsEntity>();
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v) as LocationsEntity);
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    lastRefresh = json['last_refresh'];
    resultsRetrieved = json['results_retrieved'];
  }

}

class Locations extends  LocationsEntity{
  String? id;
  num? intId;
  num? airportIntId;
  bool? active;

  String? icao;

  String? slug;
  String? slugEn;
  List<String>? alternativeNames;
  num? rank;
  num? globalRankDst;
  num? dstPopularityScore;
  String? timezone;
  City? city;
  Location? location;
  List<AlternativeDeparturePoints>? alternativeDeparturePoints;
  List<Tags>? tags;
  List<int>? providers;
  List<CarRentals>? carRentals;
  bool? newGround;
  num? routingPriority;
  String? type;

  Locations(
      {this.id,
        this.intId,
        this.airportIntId,
        this.active,
        super.code,
        this.icao,
        super.name,
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

class City extends CityEntity{
  String? id;
  String? name;
  String? slug;
  Country? country;
  Country? subdivision;
  Country? continent;
  Region? region;

  City(
      {this.id,
        this.name,
        super.code,
        this.slug,
        this.country,
        this.subdivision,
        this.continent,
        this.region});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    slug = json['slug'];
    country =
    json['country'] != null ? Country.fromJson(json['country']) : null;
    subdivision = json['subdivision'] != null
        ? Country.fromJson(json['subdivision'])
        : null;
    continent = json['continent'] != null
        ? Country.fromJson(json['continent'])
        : null;
    region =
    json['region'] != null ? Region.fromJson(json['region']) : null;
  }
}
class Country extends CountryEntity{
  String? id;
  String? name;
  String? slug;


  Country({this.id, this.name, this.slug, super.code});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    code = json['code'];
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
class Location {
  num? lat;
  num? lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

}

class AlternativeDeparturePoints {
  String? id;
  num? distance;
  num? duration;

  AlternativeDeparturePoints({this.id, this.distance, this.duration});

  AlternativeDeparturePoints.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    distance = json['distance'];
    duration = json['duration'];
  }

}

class Tags {
  String? tag;
  num? monthTo;
  num? monthFrom;

  Tags({this.tag, this.monthTo, this.monthFrom});

  Tags.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    monthTo = json['month_to'];
    monthFrom = json['month_from'];
  }
}

class CarRentals {
  num? providerId;
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
