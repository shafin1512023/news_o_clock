import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// This cubit class is used to manage user name
class NameCubit extends Cubit<String> {
  /// This cubit class is used to manage user name.
  /// It's inital value is either the name stored in the local database or
  /// an empty string.
  NameCubit()
      : super(
          Hive.box(NConstants.keywords.databaseName)
                  .get(NConstants.keywords.nameKey) ??
              "Blank",
        );

  /// Used to set the name of the user and
  /// store in the local database
  void setName(String name) {
    var database = Hive.box(NConstants.keywords.databaseName);
    database.put(NConstants.keywords.nameKey, name);
    emit(name);
  }
}
