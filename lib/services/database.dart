import 'package:hive_flutter/adapters.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// Returns the instance of local database
Box get database => Hive.box(NConstants.keywords.databaseName);
