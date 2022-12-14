import 'package:ada_handle/ada_handle.dart';
import 'package:flutter_test/flutter_test.dart';

Map<String, String> stringHexPair = {
  "walmart": "77616c6d617274",
  "ok": "6f6b",
  "ghostchain": "67686f7374636861696e",
  " ghostchain ": "67686f7374636861696e",
};

Map<String, String> stringPolicyHexPair = {
  "walmart": AdaHandle.prependPolicyId("77616c6d617274"),
  "ok": AdaHandle.prependPolicyId("6f6b"),
  "ghostchain": AdaHandle.prependPolicyId("67686f7374636861696e"),
};

void main() {
  test("stringToHex", () {
    stringHexPair.forEach((handle, bytes) {
      expect(AdaHandle.stringToHex(handle.trim()), bytes);
    });
  });

  test("stringToHexExpectException", () {
    expect(() => AdaHandle.stringToHex(""), throwsA(isA<Exception>()));
  });

  test("handleToAssetId", () {
    stringPolicyHexPair.forEach((handle, bytes) {
      expect(AdaHandle.getPolicyAssetHexCombination(handle), bytes);
    });
  });
}
