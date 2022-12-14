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

The Response would look like this:

```json
{
    "asset": "f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a77616c6d617274",
    "policy_id": "f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a",
    "asset_name": "77616c6d617274",
    "fingerprint": "asset1fg63wnn88nya4gjvythkafe0nl3y3uvkqygek2",
    "quantity": "1",
    "initial_mint_tx_hash": "f9c13bb4e57d6006ab615d7ded6161bf4c58594b00e68f6276ccdefe9cb14a9d",
    "mint_or_burn_count": 1,
    "onchain_metadata": {
        "core": {
            "og": 0,
            "prefix": "$",
            "version": 0,
            "termsofuse": "https://adahandle.com/tou",
            "handleEncoding": "utf-8"
        },
        "name": "$walmart",
        "image": "ipfs://Qme8ztELAjaNpPHYSV4pwPrssQ4yiYrsnsZafWNJFRVRty",
        "website": "https://adahandle.com",
        "description": "The Handle Standard",
        "augmentations": []
    },
    "onchain_metadata_standard": "CIP25v1",
    "metadata": null
}
```

## Additional information

Check also the test use cases [test file](test/ada_handle_test.dart)

## Contribution

You are very welcome to contribute to the package:

- Fork the Repo
- Add your changes (don't forget to add tests as well)
- Create a Pull Request (PR)

We will check your input asap

## Publisher

Created by AndroDevs @2022

Follow us on Twitter [AndroDevs](https://twitter.com/AndroDevs)

## Disclaimer

Support for this library is given as _best effort_.

This library has not been reviewed or vetted by security professionals.
