![example workflow](https://github.com/esodot/flutter_ada_handle/actions/workflows/flutter.yml/badge.svg)

A Flutter package containing conversion operations for ADA Handles ($handle)

## Features

- Checks if given policyId matches a $handle policyId
- Converts specific $handle value into $handle policyId + assetId HEX combination
- Prepends $handle policyId to given HEX asset value

## Getting started

If you not yet familiar with ADA Handle please visit official page
https://adahandle.com/

## Installation

In your project add dependency to your `pubspec.yaml`

```yaml
dependencies:
  flutter:
    sdk: flutter

  ada_handle:
    git:
      url: https://github.com/esodot/flutter_ada_handle.git
      ref: master
```
Run `flutter pub get`

Import package `import 'package:ada_handle/ada_handle.dart';`


## Usage

```dart
final String handle = 'walmart';
String policyIdAssetId = AdaHandle.getPolicyAssetHexCombination(handle);
print(policyIdAssetId);
```

Output: `f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a77616c6d617274`

Pass this value to get back asset information, for example with the [Blockfrost API](https://blockfrost.io)

The following request reads the data from Cardano Mainnet for ADA Handle "walmart"

Attention! HTTP header of your request MUST include the project_id in order to authenticate against Blockfrost servers
 
<https://cardano-mainnet.blockfrost.io/api/v0/assets/f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a77616c6d617274>


## Additional information

Check also the test use cases [test file](test/ada_handle_test.dart)

## Publisher

Created by AndroDevs @2022

Follow us on Twitter [AndroDevs](https://twitter.com/AndroDevs)

## Disclaimer

Support for this library is given as _best effort_.

This library has not been reviewed or vetted by security professionals.
