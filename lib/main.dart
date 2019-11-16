import 'package:flutter/material.dart';
import 'package:tvmaze_api/service/tvmaze_api.dart';
import 'package:tvmaze_api/ui/episode_list.dart';
import 'package:tvmaze_api/bloc/episode_bloc.dart';

void main() => runApp(MaterialApp(home: EpisodesList(bloc: EpisodesBloc(tvMazeApi: TVMazeApi()))));

