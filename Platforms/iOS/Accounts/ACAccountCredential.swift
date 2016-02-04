
@available(iOS 5.0, *)
class ACAccountCredential : NSObject {
  init!(OAuthToken token: String!, tokenSecret secret: String!)
  init!(OAuth2Token token: String!, refreshToken: String!, expiryDate: NSDate!)
  var oauthToken: String!
  init()
}
