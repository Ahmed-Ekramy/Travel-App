import 'package:travel_app/features/flight/data/data_sources/flight_remote_dto.dart';
import 'package:travel_app/features/flight/data/repositories/flight_data_repo.dart';
import '../../main.dart';

void servicesLocator() {
  getIt.registerSingleton<FlightDataRepo>(
      (FlightDataRepo(FlightRemoteDto())));
}
