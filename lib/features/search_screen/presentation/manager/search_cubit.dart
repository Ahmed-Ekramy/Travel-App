import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchUseCase searchUseCase;
  String nameDeparture = "";
  String nameArrival = "";
  final startDate=DateTime.now();
  final endDate=DateTime.now()..add(const Duration(days: 365));
  var selectedDate = DateTimeRange(
      start:DateTime.now(),
      end: DateTime.now()..add(const Duration(days: 365)));
  var searchController = TextEditingController();
  List<LocationsEntity> searchList = [];
  LocationsEntity locationsEntity = LocationsEntity();

  SearchCubit(this.searchUseCase) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);
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
}
