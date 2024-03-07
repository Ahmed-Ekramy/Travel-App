import 'package:travel_app/features/flight/domain/entities/search_tic_entity.dart';

class SearchTicketsModel extends SearchTicketsEntity {

  SearchTicketsModel({super.searchId, super.currency, super.fxRate, super.data, super.iResults});

  SearchTicketsModel.fromJson(Map<String, dynamic> json) {
    searchId = json['search_id'];
    currency = json['currency'];
    fxRate = json['fx_rate'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) { data!.add(Data.fromJson(v)); });
    }
    iResults = json['_results'];
  }

}

class Data extends DataEntity{


  Data({super.id, super.flyFrom, super.flyTo, super.cityFrom, super.cityCodeFrom, super.cityTo, super.cityCodeTo, super.countryFrom, super.countryTo, super.localDeparture, super.utcDeparture, super.localArrival, super.utcArrival, super.nightsInDest, super.quality, super.distance, super.duration, super.price, super.conversion, super.fare, super.priceDropdown, super.bagsPrice, super.baglimit, super.availability, super.airlines, super.route, super.bookingToken, super.facilitatedBookingAvailable, super.pnrCount, super.hasAirportChange, super.technicalStops, super.throwAwayTicketing, super.hiddenCityTicketing, super.virtualInterlining});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flyFrom = json['flyFrom'];
    flyTo = json['flyTo'];
    cityFrom = json['cityFrom'];
    cityCodeFrom = json['cityCodeFrom'];
    cityTo = json['cityTo'];
    cityCodeTo = json['cityCodeTo'];
    countryFrom = json['countryFrom'] != null ? CountryFrom.fromJson(json['countryFrom']) : null;
    countryTo = json['countryTo'] != null ? CountryFrom.fromJson(json['countryTo']) : null;
    localDeparture = json['local_departure'];
    utcDeparture = json['utc_departure'];
    localArrival = json['local_arrival'];
    utcArrival = json['utc_arrival'];
    nightsInDest = json['nightsInDest'];
    quality = json['quality'];
    distance = json['distance'];
    duration = json['duration'] != null ? Duration.fromJson(json['duration']) : null;
    price = json['price'];
    conversion = json['conversion'] != null ? Conversion.fromJson(json['conversion']) : null;
    fare = json['fare'] != null ? Fare.fromJson(json['fare']) : null;
    priceDropdown = json['price_dropdown'] != null ? PriceDropdown.fromJson(json['price_dropdown']) : null;
    bagsPrice = json['bags_price'] != null ? BagsPrice.fromJson(json['bags_price']) : null;
    baglimit = json['baglimit'] != null ? Baglimit.fromJson(json['baglimit']) : null;
    availability = json['availability'] != null ? Availability.fromJson(json['availability']) : null;
    airlines = json['airlines'].cast<String>();
    if (json['route'] != null) {
      route = <Route>[];
      json['route'].forEach((v) { route!.add(Route.fromJson(v)); });
    }
    bookingToken = json['booking_token'];
    facilitatedBookingAvailable = json['facilitated_booking_available'];
    pnrCount = json['pnr_count'];
    hasAirportChange = json['has_airport_change'];
    technicalStops = json['technical_stops'];
    throwAwayTicketing = json['throw_away_ticketing'];
    hiddenCityTicketing = json['hidden_city_ticketing'];
    virtualInterlining = json['virtual_interlining'];
  }

}

class CountryFrom extends CountryFromEntity{


  CountryFrom({super.code, super.name});

  CountryFrom.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }


}

class Duration extends DurationEntity{


  Duration({super.departure, super.return2, super.total});

Duration.fromJson(Map<String, dynamic> json) {
departure = json['departure'];
return2 = json['return'];
total = json['total'];
}


}

class Conversion extends ConversionEntity{

  Conversion({super.eUR});

  Conversion.fromJson(Map<String, dynamic> json) {
    eUR = json['EUR'];
  }

}

class Fare extends FareEntity {


  Fare({super.adults, super.children, super.infants});

  Fare.fromJson(Map<String, dynamic> json) {
    adults = json['adults'];
    children = json['children'];
    infants = json['infants'];
  }


}

class PriceDropdown extends PriceDropdownEntity{


  PriceDropdown({super.baseFare, super.fees});

  PriceDropdown.fromJson(Map<String, dynamic> json) {
    baseFare = json['base_fare'];
    fees = json['fees'];
  }

}

class BagsPrice extends BagsPriceEntity {

  BagsPrice({super.d1, super.d2});

  BagsPrice.fromJson(Map<String, dynamic> json) {
    d1 = json['1'];
    d2 = json['2'];
  }

}

class Baglimit extends BaglimitEntity {


  Baglimit({super.handHeight, super.handLength, super.handWeight, super.handWidth, super.holdDimensionsSum, super.holdHeight, super.holdLength, super.holdWeight, super.holdWidth, super.personalItemHeight, super.personalItemLength, super.personalItemWeight, super.personalItemWidth});

  Baglimit.fromJson(Map<String, dynamic> json) {
    handHeight = json['hand_height'];
    handLength = json['hand_length'];
    handWeight = json['hand_weight'];
    handWidth = json['hand_width'];
    holdDimensionsSum = json['hold_dimensions_sum'];
    holdHeight = json['hold_height'];
    holdLength = json['hold_length'];
    holdWeight = json['hold_weight'];
    holdWidth = json['hold_width'];
    personalItemHeight = json['personal_item_height'];
    personalItemLength = json['personal_item_length'];
    personalItemWeight = json['personal_item_weight'];
    personalItemWidth = json['personal_item_width'];
  }
}


class Availability extends AvailabilityEntity {


  Availability({super.seats});

  Availability.fromJson(Map<String, dynamic> json) {
    seats = json['seats'];
  }


}

class Route extends RouteEntity {


  Route({super.id, super.combinationId, super.flyFrom, super.flyTo, super.cityFrom, super.cityCodeFrom, super.cityTo, super.cityCodeTo, super.localDeparture, super.utcDeparture, super.localArrival, super.utcArrival, super.airline, super.flightNo, super.operatingCarrier, super.operatingFlightNo, super.fareBasis, super.fareCategory, super.fareClasses, super.return1, super.bagsRecheckRequired, super.viConnection, super.guarantee, super.equipment, super.vehicleType});

Route.fromJson(Map<String, dynamic> json) {
id = json['id'];
combinationId = json['combination_id'];
flyFrom = json['flyFrom'];
flyTo = json['flyTo'];
cityFrom = json['cityFrom'];
cityCodeFrom = json['cityCodeFrom'];
cityTo = json['cityTo'];
cityCodeTo = json['cityCodeTo'];
localDeparture = json['local_departure'];
utcDeparture = json['utc_departure'];
localArrival = json['local_arrival'];
utcArrival = json['utc_arrival'];
airline = json['airline'];
flightNo = json['flight_no'];
operatingCarrier = json['operating_carrier'];
operatingFlightNo = json['operating_flight_no'];
fareBasis = json['fare_basis'];
fareCategory = json['fare_category'];
fareClasses = json['fare_classes'];
return1 = json['return'];
bagsRecheckRequired = json['bags_recheck_required'];
viConnection = json['vi_connection'];
guarantee = json['guarantee'];
equipment = json['equipment'];
vehicleType = json['vehicle_type'];
}


}


