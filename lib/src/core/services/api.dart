import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movie_today/src/core/model/movie.dart';

class Api {
  final String baseUrl = "https://movie-challenge.netlify.app";
  Dio client = Dio();


    Future<List<Poster>> getMockData() async {
    List<Poster> tempList = List<Poster>();
    try {
      final response = await client.get("$baseUrl/movies.json");
      if (response.statusCode == 200) {
        Movie modelMain = Movie.fromJson(response.data);
        tempList = modelMain.data;
      } else {
        throw ("failed to fetch data");
      }
    } catch (e) {
      throw (e);
    }
    return tempList;
  }

}
