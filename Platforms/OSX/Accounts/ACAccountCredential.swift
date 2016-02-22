
@available(OSX 10.8, *)
class ACAccountCredential : NSObject {
  init!(oAuthToken token: String!, tokenSecret secret: String!)
  init!(oAuth2Token token: String!, refreshToken: String!, expiryDate: NSDate!)
  var oauthToken: String!
  init()
}
