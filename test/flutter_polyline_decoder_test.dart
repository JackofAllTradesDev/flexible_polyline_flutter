import 'package:flutter_polyline_decoder/flutter_polyline_decoder.dart';
import 'package:flutter_polyline_decoder/latLngZ.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('testLatLngZDecode', () {
    List<LatLngZ> computed = FlexiblePolyline.decode(
        "BGk1zxbs5o2mHoB4D3DgZAkDoBwCkD8B4ckIvCwWnBgZvvBjX_JrEnLzFrdrOrO7GzP7Gz3Bna3N7GrOnG_EvCzFvCvlBjSvbjN3NnG_TrJ7avMjDnB3hBzPrqC_iBnQvH_JrEvjCnfrE7B7GjD7LzF7VzKnpB_TnQvHnavMvR3Ize3NjI3D7L_EvRjI7LnGrT3IjI3D7ajN_E7BjSzKztBnVvgBzP3hB_O7GjDvH3DvMnGzUrJ74BvbzFvCrEvCna3N_TrJnpBrTrd7L7L3DvHvCrTjI_OnG_OvH_OvHzFvCnLzFrJrEvqB_T3D7BvR3I7G3DjDnBnGjDjD7B3rBrY3S3InpBzPnQ_EzPrEjNvCjcjD_ET_JA3NAniC7BnVnBzenBjNTjNT_JnBnzBjD31BvC_ET7kBnBnGA7LT7GTjNTzKT_JT_nBvCnQTzPArTTvHAvRnBzFTrETnGAjc7B3SnBzFAzyBvCjDAvHAjrBnB_OnB3X7BzUTrTTzFArTA3IT");
    List<LatLngZ> expected = <LatLngZ>[];

    expected.add(LatLngZ(50.10228, 8.69821, 10));
    expected.add(LatLngZ(50.10201, 8.69567, 20));
    expected.add(LatLngZ(50.10063, 8.69150, 30));
    expected.add(LatLngZ(50.09878, 8.68752, 40));
    print(computed.toList());
    // expect(computed, orderedEquals(expected));
  });
}
