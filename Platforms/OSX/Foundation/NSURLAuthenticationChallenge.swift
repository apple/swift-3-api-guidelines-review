
protocol NSURLAuthenticationChallengeSender : NSObjectProtocol {
  func useCredential(_ credential: NSURLCredential, forAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func continueWithoutCredentialForAuthenticationChallenge(_ challenge: NSURLAuthenticationChallenge)
  func cancelAuthenticationChallenge(_ challenge: NSURLAuthenticationChallenge)
  optional func performDefaultHandlingForAuthenticationChallenge(_ challenge: NSURLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinueWithChallenge(_ challenge: NSURLAuthenticationChallenge)
}
class NSURLAuthenticationChallenge : NSObject, NSSecureCoding {
  init(protectionSpace space: NSURLProtectionSpace, proposedCredential credential: NSURLCredential?, previousFailureCount previousFailureCount: Int, failureResponse response: NSURLResponse?, error error: NSError?, sender sender: NSURLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: NSURLAuthenticationChallenge, sender sender: NSURLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: NSURLProtectionSpace { get }
  @NSCopying var proposedCredential: NSURLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: NSURLResponse? { get }
  @NSCopying var error: NSError? { get }
  var sender: NSURLAuthenticationChallengeSender? { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
