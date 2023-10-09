import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/presentaion/controller/movies_bloc.dart';
import 'package:movies_app/movies/presentaion/controller/movies_event.dart';
class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) { 
        return MoviesBloc()..add(GetNowPlayingMoviesEvent());
       },
    child: const Scaffold()
    );
  }
}