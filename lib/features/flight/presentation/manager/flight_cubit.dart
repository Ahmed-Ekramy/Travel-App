import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/flight/domain/entities/search_entity.dart';
import 'package:travel_app/features/flight/domain/use_cases/flight_use_case.dart';

import '../../../economic_degree/data/models/travle_clss_model.dart';

part 'flight_state.dart';

class FlightCubit extends Cubit<FlightState> {
  FlightUseCase searchUseCase;
  String nameDepartureRoundTrip = "";
  String nameDeparture = "";
  String nameTravelRoundClass = "";
  String nameArrival = "";
  String nameTravelClass = "";
  String nameArrivalRound = "";
  int numAdult = 0;
  int numAdultRound = 0;
  int numChild = 0;
  int numChildRound = 0;
  int numBaby = 0;
  int numBabyRound = 0;
  int numAircraftBag = 0;
  int numAircraftBagRound = 0;
  int numCheckBag = 0;
  int numCheckBagRound = 0;
  Color? textColor;
  int currentIndex = 0;
  int selectedClass = 0;
  int selectedRoundClass = 0;
  final List<dynamic> travelClass = [
    TravelClassModel(
      name: "Economy class",
      id: 0,
    ),
    TravelClassModel(
      name: "Premium economy class",
      id: 1,
    ),
    TravelClassModel(
      name: "business class",
      id: 2,
    ),
    TravelClassModel(
      name: "first degree",
      id: 3,
    )
  ];
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
  List<dynamic> listTravelClass = [];
  LocationsEntity locationsEntity = LocationsEntity();

  FlightCubit(this.searchUseCase) : super(SearchInitial());

  static FlightCubit get(context) => BlocProvider.of(context);

  void updateTask(int value) {
    selectedClass = value;
    emit(UpdateTask());
  }

  void updateRoundTask(int value) {
    selectedRoundClass = value;
    emit(UpdateRoundTask());
  }

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
      lastDate: DateTime(2025),
    );
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
      lastDate: DateTime(2025),
    );
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
      lastDate: DateTime(2025),
    );
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

  void onSelectTravelGoClass(currentIndex) {
    nameTravelRoundClass = travelClass[currentIndex].name;
    emit(OnSelectTravelGoClass());
  }

  void onSelectDepartureRoundTrip(String departure) {
    nameDepartureRoundTrip = departure;
    emit(SearchOnSelectDepartureRoundTrip());
  }

  void onSelectArrival(String arrival) {
    nameArrival = arrival;
    emit(SearchOnSelectArrival());
  }

  void onSelectTravelClass(currentIndex) {
    nameTravelClass = travelClass[currentIndex].name;
    print(nameTravelClass);
    emit(OnSelectTravelClass());
  }

  void onSelectArrivalRound(String arrival) {
    nameArrivalRound = arrival;
    emit(SearchOnSelectArrivalRound());
  }

  void maxAdult() {
    if (numAdult < 9) {
      numAdult++;
    }

    emit(MaxAdult());
  }

  void maxAdultRound() {
    if (numAdultRound < 9) {
      numAdultRound++;
    }

    emit(MaxAdultRound());
  }

  void minAdult() {
    if (numAdultRound > 0) {
      numAdultRound--;
    }
    emit(MinAdult());
  }

  void minAdultRound() {
    if (numAdult > 0) {
      numAdult--;
    }
    emit(MinAdultRound());
  }

  void maxChild() {
    if (numChild < 9) {
      numChild++;
    }
    emit(MaxChild());
  }

  void maxChildRound() {
    if (numChildRound < 9) {
      numChildRound++;
    }
    emit(MaxChildRound());
  }

  void minChild() {
    if (numChild > 0) {
      numChild--;
    }
    emit(MinChild());
  }

  void minChildRound() {
    if (numChildRound > 0) {
      numChildRound--;
    }
    emit(MinChildRound());
  }

  void maxBaby() {
    if (numBaby < 9) {
      numBaby++;
    }
    emit(MaxBaby());
  }

  void maxBabyRound() {
    if (numBabyRound < 9) {
      numBabyRound++;
    }
    emit(MaxBabyRound());
  }

  void minBaby() {
    if (numBaby > 0) {
      numBaby--;
    }
    emit(MinBaby());
  }

  void minBabyRound() {
    if (numBabyRound > 0) {
      numBabyRound--;
    }
    emit(MinBabyRound());
  }

  void maxAircraftBag() {
    if (numAircraftBag < 9) {
      numAircraftBag++;
    }

    emit(MaxAirBag());
  }

  void maxAircraftBagRound() {
    if (numAircraftBagRound < 9) {
      numAircraftBagRound++;
    }

    emit(MaxAirBagRound());
  }

  void minAircraftBag() {
    if (numAircraftBag > 0) {
      numAircraftBag--;
    }
    emit(MinAirBag());
  }

  void minAircraftBagRound() {
    if (numAircraftBagRound > 0) {
      numAircraftBagRound--;
    }
    emit(MinAirBagRound());
  }

  void maxCheckBags() {
    if (numCheckBag < 9) {
      numCheckBag++;
    }
    emit(MaxCheckBagRound());
  }

  void maxCheckBagsRound() {
    if (numCheckBagRound < 9) {
      numCheckBagRound++;
    }
    emit(MaxCheckBagRound());
  }

  void minCheckBags() {
    if (numCheckBag > 0) {
      numCheckBag--;
    }
    emit(MinCheckBag());
  }

  void minCheckBagsRound() {
    if (numCheckBagRound > 0) {
      numCheckBagRound--;
    }
    emit(MinCheckBagRound());
  }

  int sumNumPassGo = 0;
  int sumNumPassRond = 0;

  int sumNumPass() {
    sumNumPassGo = numAdult + numChild + numBaby + numAircraftBag + numCheckBag;
    if (sumNumPassGo < 9) {
      return sumNumPassGo;
    }
    return 9;
  }

  int sumNumRoundPass() {
    int sumNumPassRond = numAdultRound +
        numChildRound +
        numBabyRound +
        numAircraftBagRound +
        numCheckBagRound;
    if (sumNumPassRond < 9) {
      return sumNumPassRond;
    }
    return 9;
  }
}
