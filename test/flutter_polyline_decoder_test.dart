import 'package:flutter_polyline_decoder/flutter_polyline_decoder.dart';
import 'package:flutter_polyline_decoder/latLngZ.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('testLatLngZDecode', () {
    List<LatLngZ> computed =
        FlexiblePolyline.decode("BFoz5xJ67i1B1B7PzIhaxL7Y");
    List<LatLngZ> expected = <LatLngZ>[];

    expected.add(LatLngZ(50.10228, 8.69821, 10));
    expected.add(LatLngZ(50.10201, 8.69567, 20));
    expected.add(LatLngZ(50.10063, 8.69150, 30));
    expected.add(LatLngZ(50.09878, 8.68752, 40));
    print(computed.toList());
    // expect(computed, orderedEquals(expected));
  });

  test('testSimpleLatLngEncoding', () {
    List<LatLngZ> pairs = <LatLngZ>[];
    pairs.add(LatLngZ(50.1022829, 8.6982122, 10));
    pairs.add(LatLngZ(50.1020076, 8.6956695, 20));
    pairs.add(LatLngZ(50.1006313, 8.6914960, 30));
    pairs.add(LatLngZ(50.0987800, 8.6875156, 40));

    String expected = "BFoz5xJ67i1B1B7PzIhaxL7Y";
    String computed =
        FlexiblePolyline.encode(pairs, 5, ThirdDimension.ABSENT, 0);
    print(computed);
    expect(computed, expected);
  });
}
