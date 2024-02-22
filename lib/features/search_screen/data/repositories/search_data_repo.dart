
import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/search_screen/data/data_sources/search_dto.dart';
import 'package:travel_app/features/search_screen/domain/entities/search_entity.dart';
import 'package:travel_app/features/search_screen/domain/repositories/search_domain_repo.dart';

class SearchDataRepo extends SearchDomainRepo{
  SearchDto searchDto;

  SearchDataRepo(this.searchDto);

  @override
  Future<Either<Failures, SearchEntity>> location() =>searchDto.location();

}