import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/flight/domain/entities/search_entity.dart';
import 'package:travel_app/features/flight/domain/entities/search_tic_entity.dart';

abstract class FlightDomainRepo{
  Future<Either<Failures,SearchEntity>> location({required String name});
  Future<Either<Failures,SearchTicketsEntity>> searchTickets(
   {
     required String flyFrom,
    required String flyTo,
    required String dateFrom,
  //   required String dateTo,
  }
  );


}