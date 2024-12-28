class GetAccessToken {
  String? scope;
  String? accessToken;
  String? tokenType;
  String? appId;
  int? expiresIn;
  String? nonce;

  GetAccessToken({
    this.scope,
    this.accessToken,
    this.tokenType,
    this.appId,
    this.expiresIn,
    this.nonce,
  });

  factory GetAccessToken.fromJson(Map<String, dynamic> json) {
    return GetAccessToken(
      scope: json['scope'] as String?,
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      appId: json['app_id'] as String?,
      expiresIn: json['expires_in'] as int?,
      nonce: json['nonce'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'scope': scope,
        'access_token': accessToken,
        'token_type': tokenType,
        'app_id': appId,
        'expires_in': expiresIn,
        'nonce': nonce,
      };
}
