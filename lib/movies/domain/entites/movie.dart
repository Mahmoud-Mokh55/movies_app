import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backgroundPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backgroundPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate
  });

  @override
  List<Object?> get props => [
    id,
    title,
    backgroundPath,
    genreIds,
    overview,
    voteAverage,
    releaseDate
  ];


}
