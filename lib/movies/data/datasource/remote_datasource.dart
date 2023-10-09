import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import '../../../core/network/api_conestances.dart';
import '../../../core/network/error_messege_model.dart';
import '../model/movie_model.dart';

abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource{

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final dio=Dio();
    final response = await dio.get(ApiConestance.nowPlayingMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          erroMessegeModel: ErroMessegeModel.fromjson(response.data));
    }

  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
    final dio=Dio();
    final response = await dio.get(ApiConestance.popularMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          erroMessegeModel: ErroMessegeModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final dio=Dio();
    final response = await dio.get(ApiConestance.topRatedMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          erroMessegeModel: ErroMessegeModel.fromjson(response.data));
    }
  }
}
