import 'package:data_management/core.dart';

import '../../../index.dart';

class MovieDataSource extends FireStoreDataSourceImpl<MovieModel> {
  MovieDataSource({
    super.path = ApiInfo.movies,
  });

  @override
  MovieModel build(source) {
    return MovieModel.from(source);
  }
}
