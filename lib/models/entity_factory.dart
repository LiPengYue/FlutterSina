import 'package:fullter_sina/models/home_time_line_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeTimeLineEntity") {
      return HomeTimeLineEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}