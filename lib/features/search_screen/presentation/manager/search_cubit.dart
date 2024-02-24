import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/data/models/search_model.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchUseCase searchUseCase;
  String name="";
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

  void onSelect(String x) {
    name=x;
    emit(SearchOnSelect());
  }
}
