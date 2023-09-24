import 'package:data_management/core.dart';

import '../../../index.dart';

class BackupMovieDataSource extends LocalDataSourceImpl<MovieModel> {
  BackupMovieDataSource({
    super.path = ApiInfo.movies,
  });

  @override
  MovieModel build(source) {
    return MovieModel.from(source);
  }
}
