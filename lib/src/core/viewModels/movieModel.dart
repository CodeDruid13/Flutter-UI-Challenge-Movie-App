
import 'package:movie_today/locator.dart';
import 'package:movie_today/src/core/enums/viewstate.dart';
import 'package:movie_today/src/core/model/movie.dart';
import 'package:movie_today/src/core/services/api.dart';

import 'base_model.dart';

class MovieModel extends BaseModel {
  Api _api = locator<Api>();

  List<Poster> posts;

  Future getPosts() async {
    setState(ViewState.Busy);
    posts = await _api.getMockData();
    setState(ViewState.Idle);
  }
}