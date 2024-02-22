import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';

abstract class SearchDto{
  Future<Either<Failures,SearchEntity>> location();
}