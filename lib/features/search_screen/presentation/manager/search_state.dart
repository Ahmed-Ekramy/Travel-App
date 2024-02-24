part of 'search_cubit.dart';

abstract class SearchState {}
class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  SearchEntity searchEntity;

  SearchSuccess(this.searchEntity);
}
class SearchFailure extends SearchState {
  String errorMassage;
  SearchFailure(this.errorMassage);
}
class SearchOnSelect extends SearchState {}
