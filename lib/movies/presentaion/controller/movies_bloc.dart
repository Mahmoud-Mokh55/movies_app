import 'package:bloc/bloc.dart';
import 'package:movies_app/movies/data/datasource/remote_datasource.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing.dart';
import 'package:movies_app/movies/presentaion/controller/movies_event.dart';
import 'package:movies_app/movies/presentaion/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) {
      BaseMovieRemoteDataSource baseMovieRemoteDataSource =
          MovieRemoteDataSource();
      BaseMovieRepository baseMovieRepository =
          MoviesRepository(baseMovieRemoteDataSource);
      GetNowPlayingMoviesUseCase(baseMovieRepository).exequte();
    });
  }
}
