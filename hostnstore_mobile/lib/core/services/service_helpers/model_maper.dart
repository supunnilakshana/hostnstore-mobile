import 'package:hostnstore_mobile/core/models/app_models/app_version.dart';

class ModelMaper {
  static T getEntity<T>(dynamic json) {
    print(json);
    var res;

    if (json is List) {
      switch (T) {
        // case const (List<Language>):
        //   res = json.map((map) => Language.fromMap(map)).toList();
        //   break;

        case dynamic:
          res = json;
          break;
        default:
          res = json;
          break;
      }
    } else {
      switch (T) {
        case AppVersion _:
          res = AppVersion.fromMap(json);
          break;
        case dynamic:
          res = json;
          break;

        default:
          res = json;
          break;
      }
    }
    return res;
  }
}
