import 'package:asgard/services/services.dart';
import 'package:asgard_core/asgard_core.dart';
import 'package:equatable/equatable.dart';

class ProductDetailsState extends Equatable {
  const ProductDetailsState({
    required this.product,
  });

  final ProductEntity? product;

  @override
  List<Object?> get props => [product];
}

class ProductDetailsNotifier extends ValueNotifier<ProductDetailsState> {
  ProductDetailsNotifier(ProductDetailsState initialState)
      : super(initialState);
}
