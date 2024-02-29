part of 'flight_cubit.dart';
abstract class FlightState {}
class SearchInitial extends FlightState {}
class SearchLoading extends FlightState {}
class SearchSuccess extends FlightState {
  SearchEntity searchEntity;

  SearchSuccess(this.searchEntity);
}
class SearchFailure extends FlightState {
  String errorMassage;
  SearchFailure(this.errorMassage);
}
class SearchOnSelectDeparture extends FlightState {}
class SearchOnSelectDepartureRoundTrip extends FlightState {}
class SearchOnSelectArrival extends FlightState {}
class SearchOnSelectArrivalRound extends FlightState {}
class SearchOnSelectGoDate extends FlightState {}
class SearchOnSelectGoRoundDate extends FlightState {}
class SearchOnSelectBackRoundDate extends FlightState {}
class MaxAdult extends FlightState {}
class MinAdult extends FlightState {}
class MaxChild extends FlightState {}
class MinChild extends FlightState {}
class MaxBaby extends FlightState {}
class MinBaby extends FlightState {}
class MaxAirBag extends FlightState {}
class MinAirBag extends FlightState {}
class MaxCheckBag extends FlightState {}
class MinCheckBag extends FlightState {}
class SumAddPass extends FlightState {}

