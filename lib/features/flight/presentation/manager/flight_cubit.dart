import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';

part 'flight_state.dart';

class FlightCubit extends Cubit<FlightState> {
  SearchUseCase searchUseCase;
  String nameDeparture = "";
  String nameArrival = "";
  int numAdult=0;
  int numChild=0;
  int numBaby=0;
  int numAircraftBag=0;
  int numCheckBag=0;
  final startDate=DateTime.now();
  final endDate=DateTime.now()..add(const Duration(days: 365));
  var selectedDate = DateTimeRange(
      start:DateTime.now(),
      end: DateTime.now()..add(const Duration(days: 365)));
  var searchController = TextEditingController();
  List<LocationsEntity> searchList = [];
  LocationsEntity locationsEntity = LocationsEntity();

  FlightCubit(this.searchUseCase) : super(SearchInitial());

  static FlightCubit get(context) => BlocProvider.of(context);
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
  void onSelectArrival(String arrival) {
    nameArrival = arrival;
    emit(SearchOnSelectArrival());
  }
  void chooseDate(BuildContext context) async {
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
        initialDateRange: DateTimeRange(
            start:startDate,
            end:endDate),
        firstDate: startDate,
        lastDate: endDate);
    if (chosenDate != null) {
      selectedDate = chosenDate;
    }
    emit(SearchOnSelectDate());
  }
  void maxAdult(){
    numAdult++;
    emit(MaxAdult());
  }
  void minAdult(){
    numAdult--;
    emit(MinAdult());
  }
   void maxChild(){
    numChild++;
    emit(MaxChild());
  }
  void minChild(){
    numChild--;
    emit(MinChild());
  }
   void maxBaby(){
    numBaby++;
    emit(MaxBaby());
  }
  void minBaby(){
    numBaby--;
    emit(MinBaby());
  }
  void maxAircraftBag(){
    numAircraftBag++;
    emit(MaxAirBag());
  }
  void minAircraftBag(){
    numAircraftBag--;
    emit(MinAirBag());
  }
   void maxCheckBags(){
    numCheckBag++;
    emit(MaxCheckBag());
  }
  void minCheckBags(){
    numCheckBag--;
    emit(MinCheckBag());
  }
}
