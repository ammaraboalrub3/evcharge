import 'dart:convert';
import 'package:evcharge/core/service/api_service.dart';
import 'package:evcharge/features/calculate/data/model/price_model.dart';

class PriceInfo {
  final ApiService apiService;

  PriceInfo({required this.apiService});

  Future<PriceModel> getPrice({required double kWh}) async {
    dynamic data = await apiService.get(endPoint: "calculator?amount=$kWh");

    List<dynamic> listData = jsonDecode(data);
    PriceModel priceModel = PriceModel.fromJson(listData[0]);
    print(priceModel);

    return priceModel;
  }
}
