import 'package:hive/hive.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// Returns true if the app is started for the first time
bool firstTimeLaunch() {
  var database = Hive.box(NConstants.keywords.databaseName);
  // Username is fetched because username is the only way
  // to test if the app was started for the first time or not.
  // Because Setup screen will always appear on the first launch
  // and ask for name.
  String? userName = database.get(NConstants.keywords.nameKey);
  if (userName == null) {
    return true;
  } else {
    return false;
  }
}
