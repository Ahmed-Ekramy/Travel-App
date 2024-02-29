import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/flight/domain/entities/search_entity.dart';
import 'package:travel_app/features/flight/domain/use_cases/flight_use_case.dart';

part 'flight_state.dart';

class FlightCubit extends Cubit<FlightState> {
  FlightUseCase searchUseCase;
  String nameDepartureRoundTrip = "";
  String nameDeparture = "";
  String nameArrival = "";
  String nameArrivalRound = "";
  int numAdult =0;
  int numChild = 0;
  int numBaby = 0;
  int numAircraftBag = 0;
  int numCheckBag = 0;
  final startDate = DateTime.now();
  final endDate = DateTime.now();
  var selectedGoDate = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now()..add(const Duration(days: 365)));
  var selectedGoRoundDate = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now()..add(const Duration(days: 365)));
  var selectedBackRoundDate = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now()..add(const Duration(days: 365)));
  var searchController = TextEditingController();
  List<LocationsEntity> searchList = [];
  LocationsEntity locationsEntity = LocationsEntity();

  FlightCubit(this.searchUseCase) : super(SearchInitial());

  static FlightCubit get(context) => BlocProvider.of(context);
  void chooseGoRoundDate(BuildContext context) async {
    DateTimeRange? chosenDate = await showDateRangePicker(
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blueAccent,
                  )),
              child: child!);
        },
        context: context,
        initialDateRange: DateTimeRange(start: startDate, end: endDate),
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),);
    if (chosenDate != null) {
      selectedGoRoundDate = chosenDate;
    }
    emit(SearchOnSelectGoRoundDate());
  }
  void chooseGoDate(BuildContext context) async {
    DateTimeRange? chosenDate = await showDateRangePicker(
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blueAccent,
                  )),
              child: child!);
        },
        context: context,
        initialDateRange: DateTimeRange(start: startDate, end: endDate),
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),);
    if (chosenDate != null) {
      selectedGoDate = chosenDate;
    }
    emit(SearchOnSelectGoDate());
  }
  void chooseBackRoundDate(BuildContext context) async {
    DateTimeRange? chosenDate = await showDateRangePicker(
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blueAccent,
                  )),
              child: child!);
        },
        context: context,
        initialDateRange: DateTimeRange(start: startDate, end: endDate),
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),);
    if (chosenDate != null) {
      selectedBackRoundDate = chosenDate;
    }
    emit(SearchOnSelectBackRoundDate());
  }

  void location({required String name}) async {
    var result = await searchUseCase.call(name: name);
    result.fold((l) {
      emit(SearchFailure(l.message));
    }, (r) {
      searchList = r.locations!;
      emit(SearchSuccess(r));
    });
  }

  void onSelectDeparture(String departure) {
    nameDeparture = departure;
    emit(SearchOnSelectDeparture());
  }

  void onSelectDepartureRoundTrip(String departure) {
    nameDepartureRoundTrip = departure;
    emit(SearchOnSelectDepartureRoundTrip());
  }

  void onSelectArrival(String arrival) {
    nameArrival = arrival;
    emit(SearchOnSelectArrival());
  }

  void onSelectArrivalRound(String arrival) {
    nameArrivalRound = arrival;
    emit(SearchOnSelectArrivalRound());
  }


  void maxAdult() {
    if (numAdult<9){
      numAdult++;
    }

    emit(MaxAdult());
  }

  void minAdult() {
    if(numAdult>0){
      numAdult--;
    }
    emit(MinAdult());
  }

  void maxChild() {
    if (numChild<9){
      numChild++;
    }
    emit(MaxChild());
  }

  void minChild() {
    if(numChild>0){
      numChild--;
    }
    emit(MinChild());
  }

  void maxBaby() {
    if (numBaby<9){
      numBaby++;
    }
    emit(MaxBaby());
  }

  void minBaby() {
    if(numBaby>0){
      numBaby--;
    }emit(MinBaby());
  }

  void maxAircraftBag() {
    if (numAircraftBag<9){
      numAircraftBag++;
    }

    emit(MaxAirBag());
  }

  void minAircraftBag() {
    if(numAircraftBag>0){
      numAircraftBag--;
    }
    emit(MinAirBag());
  }

  void maxCheckBags() {
    if (numCheckBag<9){
      numCheckBag++;
    }
    emit(MaxCheckBag());
  }

  void minCheckBags() {
    if(numCheckBag>0){
      numCheckBag--;
    }
    emit(MinCheckBag());
  }

  int sumNumPass() {
  int sum= numAdult + numChild + numBaby + numAircraftBag + numCheckBag;
  if (sum<9) {
    return sum;
  }
return 9;
  }
  int sumNumRoundPass() {
  int sum= numAdult + numChild + numBaby + numAircraftBag + numCheckBag;
  if (sum<9) {
    return sum;
  }
return 9;
  }
}
