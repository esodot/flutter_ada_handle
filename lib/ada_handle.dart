class AdaHandle {
  /// Static policyId of handle NFTs
  static const String _handlePolicyId =
      "f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a";

  /// Converts a handle string parameter to hex representation
  ///
  /// e.g pass parameter "walmart"
  ///
  /// result: 77616c6d617274
  static String stringToHex(String string) {
    if (string.isNotEmpty) {
      return string.codeUnits.map((e) => e.toRadixString(16)).toList().join();
    }
    return throw Exception("Missing handle parameter");
  }

  /// Creates a policyId and assetId hex combination for specific handle string value
  ///
  /// e.g pass parameter "walmart"
  ///
  /// result: f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a77616c6d617274
  static String getPolicyAssetHexCombination(String handle) {
    if (handle.isNotEmpty) {
      return _handlePolicyId + stringToHex(handle.trim().toLowerCase());
    }
    throw Exception("Missing handle parameter");
  }

  static bool isHandlePolicy(String policyId) => policyId == _handlePolicyId;

  /// Prepends policyId to asset hex value
  ///
  /// e.g pass parameter "77616c6d617274" (walmart)
  /// result: f0ff48bbb7bbe9d59a40f1ce90e9e9d0ff5002ec48f232b49ca0fb9a77616c6d617274
  static String prependPolicyId(String assetHexValue) {
    if (assetHexValue.isNotEmpty) {
      return _handlePolicyId + assetHexValue;
    }
    throw Exception("Missing assetHexValue parameter");
  }
}
