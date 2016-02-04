
@available(OSX 10.8, *)
class ACAccountCredential : Object {
  init!(oAuthToken token: String!, tokenSecret secret: String!)
  init!(oAuth2Token token: String!, refreshToken: String!, expiryDate: Date!)
  var oauthToken: String!
  init()
}
