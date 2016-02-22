
protocol NSURLAuthenticationChallengeSender : NSObjectProtocol {
  func use(credential: NSURLCredential, for challenge: NSURLAuthenticationChallenge)
  func continueWithoutCredential(for challenge: NSURLAuthenticationChallenge)
  func cancel(challenge: NSURLAuthenticationChallenge)
  optional func performDefaultHandling(for challenge: NSURLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinue(challenge: NSURLAuthenticationChallenge)
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
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
