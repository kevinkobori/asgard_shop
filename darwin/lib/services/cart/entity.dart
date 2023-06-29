import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  const CartEntity({
    required this.productIds,
  });

  final List<String> productIds;

  @override
  List<Object?> get props => [productIds];
}
