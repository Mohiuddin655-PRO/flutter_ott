import 'package:flutter_andomie/core.dart';

import '../../../index.dart';

class Drama extends Video {
  Drama({
    super.id,
    super.timeMills,
    super.name,
    super.description,
    super.thumbnail,
    super.videoUrl,
  });

  factory Drama.from(Object? source) {
    return Drama(
      id: source.entityId,
      timeMills: source.entityTimeMills,
      name: source.entityValue("name"),
      description: source.entityValue("description"),
      thumbnail: source.entityValue("thumbnail"),
      videoUrl: source.entityValue("video_url"),
    );
  }
}
