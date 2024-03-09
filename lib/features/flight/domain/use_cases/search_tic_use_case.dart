import 'package:either_dart/either.dart';
import 'package:travel_app/features/flight/domain/entities/search_tic_entity.dart';
import '../../../../core/failure/failure.dart';
import '../repositories/flight_domain_repo.dart';

class SearchTickUseCase {
  FlightDomainRepo flightDomainRepo;

  SearchTickUseCase(this.flightDomainRepo);

  Future<Either<Failures, SearchTicketsEntity>> call(
  {
  required String flyFrom,
     required String flyTo,
    required String dateFrom,
  //   required String dateTo,
   }
  ) =>
      flightDomainRepo.searchTickets(
          dateFrom: dateFrom,
          // dateTo: dateTo,
           flyFrom: flyFrom,
           flyTo: flyTo,
      );
}
