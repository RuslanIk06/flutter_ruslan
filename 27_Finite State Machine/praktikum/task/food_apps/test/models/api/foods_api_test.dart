import 'package:flutter_test/flutter_test.dart';
import 'package:food_apps/models/foods.dart';
import 'package:food_apps/models/api/foods_api.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'foods_api_test.mocks.dart';

@GenerateMocks([FoodsAPI])
void main() {
  group(
    'Contact API Test',
    () {
      FoodsAPI foodsApi = MockFoodsAPI();
      test('get all foods returns data', () async {
        when(foodsApi.getDataFoods()).thenAnswer((_) async => <Foods>[
              Foods(id: 1, name: "Ruslan"),
            ]);

        var foods = await foodsApi.getDataFoods();
        expect(foods.isNotEmpty, true);
      });
    },
  );
}
