# Flutter Flexible Polyline (Decoder & Encoder)

Translated to Null Safety Dart,
Note: this is just the same as the as the package created on the link i just translated it to null safety.

I used here maps code for encoding and decoding
https://github.com/heremaps/flexible-polyline/tree/master/dart

## Usage
## Encoding
```sh
List<LatLngZ> pairs = List<LatLngZ>();
pairs.add(LatLngZ(50.1022829, 8.6982122));
pairs.add(LatLngZ(50.1020076, 8.6956695));
pairs.add(LatLngZ(50.1006313, 8.6914960));
pairs.add(LatLngZ(50.0987800, 8.6875156));

String encoded = FlexiblePolyline.encode(pairs /* coordinates */,
	5 /* coordinate precision */, ThirdDimension.ABSENT /* third dimension */,
	0 /* third dimension precision */);

// encoded == 'BFoz5xJ67i1B1B7PzIhaxL7Y'
```
## Decoding
```sh
List<LatLngZ> decoded =
    FlexiblePolyline.decode("BFoz5xJ67i1B1B7PzIhaxL7Y");

/*
decoded == [
	LatLngZ(50.10228, 8.69821),
	LatLngZ(50.10201, 8.69567),
	LatLngZ(50.10063, 8.69150),
	LatLngZ(50.09878, 8.68752),
]
*/
```
## To Work on
Z Coordinate looks like doesnt have any value still looking for a solution and what might be the problem
If you ever encounter this or able to solve this please do fork this project and try to create an issue and PR it.
Will try to publish this to pub.dev
