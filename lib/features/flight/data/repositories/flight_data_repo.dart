
import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/flight/data/data_sources/flight_dto.dart';
import 'package:travel_app/features/flight/domain/entities/search_entity.dart';
import 'package:travel_app/features/flight/domain/repositories/flight_domain_repo.dart';

class FlightDataRepo extends FlightDomainRepo{
  FlightDto searchDto;

  FlightDataRepo(this.searchDto);

  @override
  Future<Either<Failures, SearchEntity>> location({required String name}) =>searchDto.location(name: name);

}