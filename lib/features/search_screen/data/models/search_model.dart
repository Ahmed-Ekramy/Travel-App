import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';

class SearchModel extends SearchEntity {
  SearchModel({
    required super.locations,
    required this.meta,
    required this.lastRefresh,
    required this.resultsRetrieved,
  });
  late final Meta meta;
  late final int lastRefresh;
  late final int resultsRetrieved;

  SearchModel.fromJson(Map<String, dynamic> json){
    meta = Meta.fromJson(json['meta']);
    lastRefresh = json['last_refresh'];
    resultsRetrieved = json['results_retrieved'];
  }
}

class Locations extends LocationsEntity {
  Locations({
    required this.id,
    required this.intId,
    required this.airportIntId,
    required this.active,
    required super.code,
    required this.icao,
    required super.name,
    required this.slug,
    required this.slugEn,
    required this.alternativeNames,
    required this.rank,
    required this.globalRankDst,
    required this.dstPopularityScore,
    required this.timezone,
    required this.city,
    required this.location,
    required this.alternativeDeparturePoints,
    required this.tags,
    required this.providers,
    required this.special,
    required this.touristRegion,
    required this.carRentals,
    required this.newGround,
    required this.routingPriority,
    required this.type,
  });
  late final String id;
  late final int intId;
  late final int airportIntId;
  late final bool active;
  late final String icao;
  late final String slug;
  late final String slugEn;
  late final List<String> alternativeNames;
  late final int rank;
  late final int globalRankDst;
  late final int dstPopularityScore;
  late final String timezone;
  late final City city;
  late final Location location;
  late final List<AlternativeDeparturePoints> alternativeDeparturePoints;
  late final List<Tags> tags;
  late final List<int> providers;
  late final List<Special> special;
  late final List<TouristRegion> touristRegion;
  late final List<CarRentals> carRentals;
  late final bool newGround;
  late final int routingPriority;
  late final String type;

  Locations.fromJson(Map<String, dynamic> json){
    id = json['id'];
    intId = json['int_id'];
    airportIntId = json['airport_int_id'];
    active = json['active'];
    code = json['code'];
    icao = json['icao'];
    name = json['name'];
    slug = json['slug'];
    slugEn = json['slug_en'];
    alternativeNames = List.castFrom<dynamic, String>(json['alternative_names']);
    rank = json['rank'];
    globalRankDst = json['global_rank_dst'];
    dstPopularityScore = json['dst_popularity_score'];
    timezone = json['timezone'];
    city = City.fromJson(json['city']);
    location = Location.fromJson(json['location']);
    alternativeDeparturePoints = List.from(json['alternative_departure_points']).map((e)=>AlternativeDeparturePoints.fromJson(e)).toList();
    tags = List.from(json['tags']).map((e)=>Tags.fromJson(e)).toList();
    providers = List.castFrom<dynamic, int>(json['providers']);
    special = List.from(json['special']).map((e)=>Special.fromJson(e)).toList();
    touristRegion = List.from(json['tourist_region']).map((e)=>TouristRegion.fromJson(e)).toList();
    carRentals = List.from(json['car_rentals']).map((e)=>CarRentals.fromJson(e)).toList();
    newGround = json['new_ground'];
    routingPriority = json['routing_priority'];
    type = json['type'];
  }
}

class City extends CityEntity{
  City({
    required this.id,
    required this.name,
    required super.code,
    required this.slug,
    required this.region,
    required this.country,
    this.nearbyCountry,
    this.subdivision,
    required this.continent,
    this.autonomousTerritory,
  });
  late final String id;
  late final String name;
  late final String slug;
  late final Region region;
  late final Country country;
  late final Null nearbyCountry;
  late final Subdivision? subdivision;
  late final Continent continent;
  late final Null autonomousTerritory;

  City.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    code = json['code'];
    slug = json['slug'];
    region = Region.fromJson(json['region']);
    country = Country.fromJson(json['country']);
    nearbyCountry = null;
    subdivision = null;
    continent = Continent.fromJson(json['continent']);
    autonomousTerritory = null;
  }

}

class Region {
  Region({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final String id;
  late final String name;
  late final String slug;

  Region.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
}

class Country extends CountryEntity {
  Country({
    required this.id,
    required this.name,
    required this.slug,
    required super.code,
  });
  late final String id;
  late final String name;
  late final String slug;

  Country.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    code = json['code'];
  }

}

class Subdivision {
  Subdivision({
    required this.id,
    required this.name,
    required this.slug,
    required this.code,
  });
  late final String id;
  late final String name;
  late final String slug;
  late final String code;

  Subdivision.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    code = json['code'];
  }
}

class Continent {
  Continent({
    required this.id,
    required this.name,
    required this.slug,
    required this.code,
  });
  late final String id;
  late final String name;
  late final String slug;
  late final String code;

  Continent.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    code = json['code'];
  }

}

class Location {
  Location({
    required this.lat,
    required this.lon,
  });
  late final double lat;
  late final double lon;

  Location.fromJson(Map<String, dynamic> json){
    lat = json['lat'];
    lon = json['lon'];
  }

}

class AlternativeDeparturePoints {
  AlternativeDeparturePoints({
    required this.id,
    required this.distance,
    required this.duration,
  });
  late final String id;
  late final int? distance;
  late final int? duration;

  AlternativeDeparturePoints.fromJson(Map<String, dynamic> json){
    id = json['id'];
    distance = json['distance'];
    duration = json['duration'];
  }
}

class Tags {
  Tags({
    required this.tag,
    required this.monthTo,
    required this.monthFrom,
  });
  late final String tag;
  late final int monthTo;
  late final int monthFrom;

  Tags.fromJson(Map<String, dynamic> json){
    tag = json['tag'];
    monthTo = json['month_to'];
    monthFrom = json['month_from'];
  }
}

class Special {
  Special({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final String id;
  late final String name;
  late final String slug;

  Special.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
}

class TouristRegion {
  TouristRegion({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final String id;
  late final String name;
  late final String slug;

  TouristRegion.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
}

class CarRentals {
  CarRentals({
    required this.providerId,
    required this.providersLocations,
  });
  late final int providerId;
  late final List<String> providersLocations;

  CarRentals.fromJson(Map<String, dynamic> json){
    providerId = json['provider_id'];
    providersLocations = List.castFrom<dynamic, String>(json['providers_locations']);
  }

}

class Meta {
  Meta({
    required this.locale,
  });
  late final Locale locale;

  Meta.fromJson(Map<String, dynamic> json){
    locale = Locale.fromJson(json['locale']);
  }

}

class Locale {
  Locale({
    required this.code,
    required this.status,
  });
  late final String code;
  late final String status;

  Locale.fromJson(Map<String, dynamic> json){
    code = json['code'];
    status = json['status'];
  }

}