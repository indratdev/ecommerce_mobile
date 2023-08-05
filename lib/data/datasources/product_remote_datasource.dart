import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../common/global_variables.dart';
import '../models/responses/list_product_response_model.dart';

class ProductRemoteDatasource {
  Future<Either<String, ListProductResponseModel>> getAllProduct() async {
    print(">>> test : ${GlobalVariables.baseUrl}/api/products?populate=* ");
    final response = await http
        .get(Uri.parse('${GlobalVariables.baseUrl}/api/products?populate=*'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Right(ListProductResponseModel.fromJson(data));
    } else {
      return const Left('proses gagal');
    }
  }
}
