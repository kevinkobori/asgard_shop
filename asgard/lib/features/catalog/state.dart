import 'package:asgard/services/services.dart';
import 'package:asgard_core/asgard_core.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class CatalogState extends Equatable {
  const CatalogState({
    required this.products,
  });

  final List<ProductEntity> products;

  factory CatalogState.demo() => const CatalogState(
        products: [
          ProductEntity(
            id: '001',
            image: 'https://picsum.photos/id/10/200/300',
            name: 'Kygnor',
            description: 'Example ...',
            category: 'Axes',
            price: 100,
            imageAspectRatio: 0.9,
          ),
          ProductEntity(
            id: '002',
            image: 'https://picsum.photos/id/20/200/300',
            name: 'Viktar',
            description: 'Example ...',
            category: 'Clothes',
            price: 68,
            imageAspectRatio: 0.7,
          ),
          ProductEntity(
            id: '003',
            image: 'https://picsum.photos/id/30/200/300',
            name: 'Jvynir',
            description: 'Example ...',
            category: 'Helmets',
            price: 240,
            imageAspectRatio: 0.8,
          ),
          ProductEntity(
            id: '004',
            image: 'https://picsum.photos/id/40/200/300',
            name: 'Mulnir',
            description: 'Example ...',
            category: 'Animals',
            price: 32,
            imageAspectRatio: 0.6,
          ),
          ProductEntity(
            id: '005',
            image: 'https://picsum.photos/id/50/200/300',
            name: 'Magnar',
            description: 'Example ...',
            category: 'Helmets',
            price: 120,
            imageAspectRatio: 0.5,
          ),
          ProductEntity(
            id: '006',
            image: 'https://picsum.photos/id/60/200/300',
            name: 'Oknaar',
            description: 'Example ...',
            category: 'Axes',
            price: 172,
            imageAspectRatio: 0.76,
          ),
          ProductEntity(
            id: '007',
            image: 'https://picsum.photos/id/70/200/300',
            name: 'Oknaar',
            description: 'Example ...',
            category: 'Helmets',
            price: 208,
            imageAspectRatio: 0.92,
          ),
        ],
      );

  ProductEntity? getProduct(String id) => products.firstWhereOrNull(
        (product) => product.id == id,
      );

  @override
  List<Object?> get props => throw UnimplementedError();
}

class CatalogNotifier extends ValueNotifier<CatalogState> {
  CatalogNotifier.demo() : super(CatalogState.demo());
}
