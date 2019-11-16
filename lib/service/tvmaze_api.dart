import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

import 'package:tvmaze_api/Model/Episode.dart';

class TVMazeApi {
  static final baseUrl = 'http://api.tvmaze.com/';

//  Future<List<Episode> getEpisodesbyDate(String date) async {
//     final json = http.get(url);
//
//  }
//
  Future<EpisodesList> getShowByName(String showName) async {
    final path = 'search/shows?q=$showName';
    final url = baseUrl + path;
    try {
      Response response = await http.get(url);
      if (response.statusCode == 200) {
        final responseBody = response.body;
        var body = json.jsonDecode(responseBody);
        return EpisodesList.fromJson(body);
      } else {
        throw Exception('');
      }
    } on Exception catch(error) {
      throw Exception(error);
    }
  }
}
