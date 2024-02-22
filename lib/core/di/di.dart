import 'package:travel_app/features/search_screen/data/data_sources/search_remote_dto.dart';
import 'package:travel_app/features/search_screen/data/repositories/search_data_repo.dart';
import '../../main.dart';

void servicesLocator() {
  getIt.registerSingleton<SearchDataRepo>(
      (SearchDataRepo(SearchRemoteDto())));
}
