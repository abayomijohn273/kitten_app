import 'package:kitten_app/business_logic/models/rate.dart';

abstract class WebApi {
  Future<List<Rate>> fetchExchangeRates();
}