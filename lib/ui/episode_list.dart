import 'package:flutter/material.dart';
import 'package:tvmaze_api/bloc/episode_bloc.dart';

class EpisodesList extends StatefulWidget {
  final EpisodesBloc bloc;

  EpisodesList({this.bloc}) : assert(bloc != null);

  @override
  _EpisodesListState createState() => _EpisodesListState();
}

class _EpisodesListState extends State<EpisodesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Episodes List'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: widget.bloc.episodeName.add,
              decoration: InputDecoration(
                suffixIcon: Container(
                  width: 5,
                  height: 5,
                  child: StreamBuilder<bool>(
                      initialData: false,
                      stream: widget.bloc.showActivityIndicator,
                      builder: (context, snapShot) {
                        return snapShot.data ? activityIndicator() : Container();
                      }),
                ),
                  labelText: 'Search by Episode',
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Expanded(
            child: StreamBuilder<List<String>>(
                stream: widget.bloc.episodeNames,
                initialData: [],
                builder: (context, snapShot) {
                  if (snapShot.data.isEmpty) {
                    return Center(
                      child: Text('No Episodes'),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapShot.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(snapShot.data[index]),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }

  Widget activityIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
