import 'package:data_management/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'index.dart';

GetIt di = GetIt.instance;

Future<void> diInit() async {
  await _base();
  _user();
  _movie();
  _movieCategory();
  await di.allReady();
}

Future<void> _base() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Firebase.initializeApp();
  final preferences = await SharedPreferences.getInstance();
  di.registerLazySingleton<FirebaseApp>(() => app);
  di.registerLazySingleton<SharedPreferences>(() => preferences);
  di.registerLazySingleton<UserPreference>(() => UserPreference(di()));
}

void _user() {
  di.registerLazySingleton<UserDataSource>(() {
    return UserDataSource();
  });

  di.registerLazySingleton<RemoteDataRepository<User>>(() {
    return RemoteDataRepositoryImpl<User>(source: di<UserDataSource>());
  });

  di.registerLazySingleton<RemoteDataHandler<User>>(() {
    return RemoteDataHandlerImpl<User>(repository: di());
  });

  di.registerFactory<UserController>(() => UserController(di()));
}

void _movie() {
  di.registerLazySingleton<MovieDataSource>(() {
    return MovieDataSource();
  });

  di.registerLazySingleton<BackupMovieDataSource>(() {
    return BackupMovieDataSource();
  });

  di.registerLazySingleton<RemoteDataRepository<Movie>>(() {
    return RemoteDataRepositoryImpl<Movie>(
      source: di<MovieDataSource>(),
      backup: di<BackupMovieDataSource>(),
      isCacheMode: true,
    );
  });

  di.registerLazySingleton<RemoteDataHandler<Movie>>(() {
    return RemoteDataHandlerImpl<Movie>(repository: di());
  });

  di.registerFactory<MovieDataController>(() => MovieDataController(di()));
}

void _movieCategory() {
  di.registerLazySingleton<MovieCategoryDataSource>(() {
    return MovieCategoryDataSource();
  });

  di.registerLazySingleton<BackupMovieCategoryDataSource>(() {
    return BackupMovieCategoryDataSource();
  });

  di.registerLazySingleton<RemoteDataRepository<MovieCategoryModel>>(() {
    return RemoteDataRepositoryImpl<MovieCategoryModel>(
      source: di<MovieCategoryDataSource>(),
      backup: di<BackupMovieCategoryDataSource>(),
      isCacheMode: true,
    );
  });

  di.registerLazySingleton<RemoteDataHandler<MovieCategoryModel>>(() {
    return RemoteDataHandlerImpl<MovieCategoryModel>(repository: di());
  });

  di.registerFactory<MovieCategoryDataController>(() {
    return MovieCategoryDataController(di());
  });
}
