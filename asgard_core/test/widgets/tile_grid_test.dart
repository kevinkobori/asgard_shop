import 'package:asgard_core/_internal.dart';
import 'package:test_utils/test_utils.dart';

import '../base/widget.dart';

void main() async {
  testAppWidgets(
    'tile_grid',
    {
      'products': const CustomScrollView(
        slivers: [
          AsgardTileSliverGrid(
            children: [
              ProductTileLayout.idle(
                name: 'Dog 1',
                price: 300,
                image: kDogImage,
                aspectRatio: 1 / 1.5,
              ),
              ProductTileLayout.idle(
                name: 'Dog 2',
                price: 400,
                image: kDogImage,
                aspectRatio: 1 / 1,
              ),
              ProductTileLayout.idle(
                name: 'Dog 3',
                price: 200,
                image: kDogImage,
                aspectRatio: 1 / 2,
              ),
              ProductTileLayout.idle(
                name: 'Dog 4',
                price: 120,
                image: kDogImage,
                aspectRatio: 1 / 1.8,
              ),
            ],
          ),
        ],
      ),
    },
    baseSize: const Size(1024, 1600),
  );
}
