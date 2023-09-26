import '../../../index.dart';

class MovieSource {
  Future<List<Movie>> getFreeLimitedTimeVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getLatestVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getMostWatchedVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getPremiumVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getRecentWatchVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getShortVideos() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getSpecificHeroVideos(String heroName) {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }

  Future<List<Movie>> getTrailers() {
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      return List.generate(10, (index) => Movie());
    });
  }
}
