import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';


part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchUseCase searchUseCase;

  SearchCubit(this.searchUseCase) : super(SearchInitial());

  void location() async {
    var result = await searchUseCase.call();
    result.fold(
        (l) => emit(SearchFailure(l.message)), (r) => emit(SearchSuccess(r)));
  }
}
