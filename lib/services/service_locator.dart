import 'package:get_it/get_it.dart';

import 'package:kitten_app/services/web_api/web_api.dart';
import 'package:kitten_app/services/web_api/web_api_fake.dart';
import 'package:kitten_app/services/web_api/web_api_implementation.dart';

import 'package:kitten_app/services/currency/currency_service.dart';
import 'package:kitten_app/services/currency/currency_service_fake.dart';
import 'package:kitten_app/services/currency/currency_service_implementation.dart';

import 'package:kitten_app/services/storage/storage_service.dart';
import 'package:kitten_app/services/storage/storage_service_fake.dart';
import 'package:kitten_app/services/storage/storage_service_implementation.dart';

import 'package:kitten_app/business_logic/view_models/calculate_screen_viewmodel.dart';
import 'package:kitten_app/business_logic/view_models/choose_favorite_viewmodel.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator
      .registerLazySingleton<StorageService>(() => StorageServiceImpl());
  serviceLocator
      .registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());
  serviceLocator.registerLazySingleton<WebApi>(() => WebApiImpl());

  serviceLocator.registerFactory<CalculateScreenViewModel>(
      () => CalculateScreenViewModel());
  serviceLocator.registerFactory<ChooseFavoritesViewModel>(
      () => ChooseFavoritesViewModel());
}
