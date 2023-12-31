class ApiConestance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = '6b726973ba4698080664c47bc5602e2d';

  static const String nowPlayingMoviePath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviePath =
      '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviePath =
      '$baseUrl/movie/top_rated?api_key=$apiKey';
}
