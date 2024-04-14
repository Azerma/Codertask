import 'package:flutter_application_14/service/product%20_service.dart';
import 'package:flutter_application_14/model/product_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductCubit extends Cubit<List<ProductList>> {
  ProductCubit() : super([]);

  Future<void> fetchProducts() async {
    try {
      final products = await ProductService.getProducts();
      emit(products);
    } catch (e) {
      // Handle errors here
      print('Failed to fetch products: $e');
    }
  }
}
