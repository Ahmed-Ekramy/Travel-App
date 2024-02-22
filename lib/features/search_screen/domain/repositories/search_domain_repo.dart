import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';

abstract class SearchDomainRepo{
  Future<Either<Failures,>> location(){

  }
}