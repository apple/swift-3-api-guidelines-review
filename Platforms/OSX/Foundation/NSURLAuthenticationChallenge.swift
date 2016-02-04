
protocol NSURLAuthenticationChallengeSender : NSObjectProtocol {
  func useCredential(credential: NSURLCredential, forAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func continueWithoutCredentialForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  func cancelAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  optional func performDefaultHandlingForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinueWithChallenge(challenge: NSURLAuthenticationChallenge)
}
class NSURLAuthenticationChallenge : NSObject, NSSecureCoding {
  init(protectionSpace space: NSURLProtectionSpace, proposedCredential credential: NSURLCredential?, previousFailureCount: Int, failureResponse response: NSURLResponse?, error: NSError?, sender: NSURLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: NSURLAuthenticationChallenge, sender: NSURLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: NSURLProtectionSpace { get }
  @NSCopying var proposedCredential: NSURLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: NSURLResponse? { get }
  @NSCopying var error: NSError? { get }
  var sender: NSURLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
