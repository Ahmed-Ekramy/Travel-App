part of 'flight_cubit.dart';
abstract class FlightState {}
class SearchInitial extends FlightState {}
class SearchLoading extends FlightState {}
class SearchTicLoading extends FlightState {}
class SearchSuccess extends FlightState {
  SearchEntity searchEntity;

  SearchSuccess(this.searchEntity);
}
class SearchTicSuccess extends FlightState {
  SearchTicketsEntity searchTicketsEntity;

  SearchTicSuccess(this.searchTicketsEntity);
}
class SearchTicFailure extends FlightState {
  String errorMassage;
  SearchTicFailure(this.errorMassage);
}
class SearchFailure extends FlightState {
  String errorMassage;
  SearchFailure(this.errorMassage);
}
class SearchOnSelectDeparture extends FlightState {}
class OnSelectTravelClass extends FlightState {}
class SearchOnSelectDepartureRoundTrip extends FlightState {}
class OnSelectTravelGoClass extends FlightState {}
class SearchOnSelectArrival extends FlightState {}
class SearchOnSelectArrivalRound extends FlightState {}
class SearchOnSelectGoDate extends FlightState {}
class SearchOnSelectGoRoundDate extends FlightState {}
class SearchOnSelectBackRoundDate extends FlightState {}
class MaxAdult extends FlightState {}
class MaxAdultRound extends FlightState {}
class MinAdult extends FlightState {}
class MinAdultRound extends FlightState {}
class MaxChild extends FlightState {}
class MaxChildRound extends FlightState {}
class MinChild extends FlightState {}
class MinChildRound extends FlightState {}
class MaxBaby extends FlightState {}
class MaxBabyRound extends FlightState {}
class MinBaby extends FlightState {}
class MinBabyRound extends FlightState {}
class MaxAirBag extends FlightState {}
class MaxAirBagRound extends FlightState {}
class MinAirBag extends FlightState {}
class MinAirBagRound extends FlightState {}
class MaxCheckBag extends FlightState {}
class MaxCheckBagRound extends FlightState {}
class MinCheckBag extends FlightState {}
class MinCheckBagRound extends FlightState {}
class SumAddPass extends FlightState {}
class AddTask extends FlightState {}
class UpdateTask extends FlightState {}
class UpdateRoundTask extends FlightState {}
class ChangeItem extends FlightState {}
class DeleteTask extends FlightState {}

