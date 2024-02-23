import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/data/models/search_model.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchUseCase searchUseCase;
  List<LocationsEntity> searchList = [];
  LocationsEntity locationsEntity=LocationsEntity();

  SearchCubit(this.searchUseCase) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  void location({required String name}) async {
    print("ggggggggggggggggggggggggggggggggggggggggggg");
    var result = await searchUseCase.call(name: name);
    print("${result}vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv");
    result.fold((l) {
      print(l.message);
      emit(SearchFailure(l.message));
    }, (r) {
      searchList = r.locations!;
      print(r.locations);
      emit(SearchSuccess(r));
    });
  }
}
