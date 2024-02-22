import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/search_screen/data/repositories/search_data_repo.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/repositories/search_domain_repo.dart';
import 'package:travel_app/features/search_screen/domain/use_cases/search_use_case.dart';

import '../../data/data_sources/search_dto.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchDto searchDto;

  SearchCubit(this.searchDto) : super(SearchInitial());

  void location() async {
    SearchDomainRepo searchDomainRepo = SearchDataRepo(searchDto);
    SearchUseCase searchUseCase = SearchUseCase(searchDomainRepo);
    var result = await searchUseCase.call();
    result.fold(
        (l) => emit(SearchFailure(l.message)), (r) => emit(SearchSuccess(r)));
  }
}
