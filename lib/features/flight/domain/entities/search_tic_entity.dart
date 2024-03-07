class SearchTicketsEntity {
  String? searchId;
  String? currency;
  num? fxRate;
  List<DataEntity>? data;
  num? iResults;

  SearchTicketsEntity({this.searchId, this.currency, this.fxRate, this.data, this.iResults});

}
class DataEntity {
  String? id;
  String? flyFrom;
  String? flyTo;
  String? cityFrom;
  String? cityCodeFrom;
  String? cityTo;
  String? cityCodeTo;
  CountryFromEntity? countryFrom;
  CountryFromEntity? countryTo;
  String? localDeparture;
  String? utcDeparture;
  String? localArrival;
  String? utcArrival;
  num? nightsInDest;
  num? quality;
  num? distance;
  DurationEntity? duration;
  num? price;
  ConversionEntity? conversion;
  FareEntity? fare;
  PriceDropdownEntity? priceDropdown;
  BagsPriceEntity? bagsPrice;
  BaglimitEntity? baglimit;
  AvailabilityEntity? availability;
  List<String>? airlines;
  List<RouteEntity>? route;
  String? bookingToken;
  bool? facilitatedBookingAvailable;
  num? pnrCount;
  bool? hasAirportChange;
  num? technicalStops;
  bool? throwAwayTicketing;
  bool? hiddenCityTicketing;
  bool? virtualInterlining;

  DataEntity({this.id, this.flyFrom, this.flyTo, this.cityFrom, this.cityCodeFrom, this.cityTo, this.cityCodeTo, this.countryFrom, this.countryTo, this.localDeparture, this.utcDeparture, this.localArrival, this.utcArrival, this.nightsInDest, this.quality, this.distance, this.duration, this.price, this.conversion, this.fare, this.priceDropdown, this.bagsPrice, this.baglimit, this.availability, this.airlines, this.route, this.bookingToken, this.facilitatedBookingAvailable, this.pnrCount, this.hasAirportChange, this.technicalStops, this.throwAwayTicketing, this.hiddenCityTicketing, this.virtualInterlining});

}
class CountryFromEntity {
  String? code;
  String? name;

  CountryFromEntity({this.code, this.name});

}

class DurationEntity {
  num? departure;
  num? return2;
  num? total;

  DurationEntity({this.departure, this.return2, this.total});

}

class ConversionEntity {
  num? eUR;

  ConversionEntity({this.eUR});

}

class FareEntity {
  num? adults;
  num? children;
  num? infants;

  FareEntity({this.adults, this.children, this.infants});

}

class PriceDropdownEntity {
  num? baseFare;
  num? fees;

  PriceDropdownEntity({this.baseFare, this.fees});

}

class BagsPriceEntity {
  num? d1;
  num? d2;

  BagsPriceEntity({this.d1, this.d2});


}

class BaglimitEntity {
  num? handHeight;
  num? handLength;
  num? handWeight;
  num? handWidth;
  num? holdDimensionsSum;
  num? holdHeight;
  num? holdLength;
  num? holdWeight;
  num? holdWidth;
  num? personalItemHeight;
  num? personalItemLength;
  num? personalItemWeight;
  num? personalItemWidth;

  BaglimitEntity({this.handHeight, this.handLength, this.handWeight, this.handWidth, this.holdDimensionsSum, this.holdHeight, this.holdLength, this.holdWeight, this.holdWidth, this.personalItemHeight, this.personalItemLength, this.personalItemWeight, this.personalItemWidth});
}

class AvailabilityEntity {
  num? seats;

  AvailabilityEntity({this.seats});
}

class RouteEntity {
  String? id;
  String? combinationId;
  String? flyFrom;
  String? flyTo;
  String? cityFrom;
  String? cityCodeFrom;
  String? cityTo;
  String? cityCodeTo;
  String? localDeparture;
  String? utcDeparture;
  String? localArrival;
  String? utcArrival;
  String? airline;
  num? flightNo;
  String? operatingCarrier;
  String? operatingFlightNo;
  String? fareBasis;
  String? fareCategory;
  String? fareClasses;
  num? return1;
  bool? bagsRecheckRequired;
  bool? viConnection;
  bool? guarantee;
  Null? equipment;
  String? vehicleType;

  RouteEntity({this.id, this.combinationId, this.flyFrom, this.flyTo, this.cityFrom, this.cityCodeFrom, this.cityTo, this.cityCodeTo, this.localDeparture, this.utcDeparture, this.localArrival, this.utcArrival, this.airline, this.flightNo, this.operatingCarrier, this.operatingFlightNo, this.fareBasis, this.fareCategory, this.fareClasses, this.return1, this.bagsRecheckRequired, this.viConnection, this.guarantee, this.equipment, this.vehicleType});


}


