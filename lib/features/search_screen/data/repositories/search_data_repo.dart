
import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/repositories/search_domain_repo.dart';

class SearchDataRepo extends SearchDomainRepo{
  @override
  Future<Either<Failures, SearchEntity>> location() {
    // TODO: implement location
    throw UnimplementedError();
  }

}