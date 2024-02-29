import 'package:either_dart/either.dart';
import 'package:travel_app/features/flight/domain/repositories/flight_domain_repo.dart';

import '../../../../core/failure/failure.dart';
import '../entities/search_entity.dart';

class FlightUseCase{
  FlightDomainRepo searchDomainRepo;
  FlightUseCase(this.searchDomainRepo);
  Future<Either<Failures,SearchEntity>> call({required String name})=>searchDomainRepo.location(name: name);
}