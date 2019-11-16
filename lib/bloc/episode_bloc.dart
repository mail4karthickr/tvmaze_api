import 'package:rxdart/rxdart.dart';
import 'package:tvmaze_api/service/tvmaze_api.dart';

enum EpisodesListState { loading, loadedEpisodesList, error }
class EpisodesBloc {
  TVMazeApi tvMazeApi;

  EpisodesBloc({TVMazeApi tvMazeApi})
      : assert(tvMazeApi != null) {
    this.tvMazeApi = tvMazeApi;

    //_initStateSubject.flatMap((showName) => tvMazeApi.getShowByName(showName));
    final searchEpisodeResult = _episodeNameSubject
        .throttleTime(Duration(milliseconds: 300))
        .switchMap((name) => tvMazeApi.getShowByName(name).asStream())
        .map((episodesList) => episodesList.episodes)
        .map((episodes) {
          final result = episodes.map((episode) { return episode.show.name; }).toList();
          print('$result');
          return result;
        });

    showActivityIndicator = Observable.merge([
      _episodeNameSubject.map((_) => true),
      searchEpisodeResult.map((_) => false)
    ]);

    episodeNames = searchEpisodeResult.map((searchEpisodeResult) => searchEpisodeResult);
  }

  final _initStateSubject = PublishSubject();
  Sink get initState => _initStateSubject.sink;

  final _episodeNameSubject = PublishSubject<String>();
  Sink<String> get episodeName => _episodeNameSubject.sink;

  Stream<List<String>> episodeNames;

  Stream<bool> showActivityIndicator;

  close() {
    _initStateSubject.close();
    _episodeNameSubject.close();
  }
}