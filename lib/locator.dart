import 'package:get_it/get_it.dart';
import 'package:movie_today/src/core/services/api.dart';
import 'package:movie_today/src/core/viewModels/movieModel.dart';

GetIt locator = GetIt.instance;

//Used to locate services and dependency injection

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  
  locator.registerFactory(() => MovieModel()); 
}