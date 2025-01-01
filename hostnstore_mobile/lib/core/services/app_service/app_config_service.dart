import 'package:stacked/stacked.dart';

class AppConfigService with ListenableServiceMixin {
  // Future<AppUpdateCheck> checkAppUpdate() async {
  //   try {
  //     PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //     String version = packageInfo.version;

  //     final response = await client.items(collection).readOne("1");

  //     print('response: ${response.data}');

  //     final AppVersion appVersions =
  //         ModelMaper.getEntity<AppVersion>(response.data, false)!;

  //     final AppVersion appVersion = appVersions;

  //     final String fetchedVersion = Platform.isAndroid
  //         ? appVersion.androidVersion
  //         : appVersion.iosVersion;

  //     print('fetchedVersion: $fetchedVersion');
  //     print('version: $version');

  //     //check is debug mode

  //     if (fetchedVersion.trim() == version.trim()) {
  //       return AppUpdateCheck(isUpdateAvailable: false, isForceUpdate: false);
  //     } else {
  //       return AppUpdateCheck(
  //           isUpdateAvailable: true, isForceUpdate: appVersion.isForcedUpdate);
  //     }
  //   } catch (e) {
  //     return AppUpdateCheck(isUpdateAvailable: false, isForceUpdate: false);
  //   }
  // }
}
