
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter_application_14/model/product_response.dart';
import 'package:flutter_application_14/service/Endpoint.dart';

class ProductService {
  static Future<List<ProductList>> getProducts() async {
    try {
      final url = Uri.parse(Endpoint.productUrl);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((json) => ProductList.fromJson(json)).toList();
      }
      throw Exception('Failed to load products');
    } on SocketException catch (e) {
      throw SocketException('$e');
    } catch (e) {
      throw Exception('Failed to load products');
    }
  }
}
