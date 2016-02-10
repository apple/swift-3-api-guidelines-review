
protocol URLAuthenticationChallengeSender : ObjectProtocol {
  func use(credential: URLCredential, forAuthenticationChallenge challenge: URLAuthenticationChallenge)
  func continueWithoutCredentialFor(challenge: URLAuthenticationChallenge)
  func cancel(challenge: URLAuthenticationChallenge)
  optional func performDefaultHandlingFor(challenge: URLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinueWith(challenge: URLAuthenticationChallenge)
}
class URLAuthenticationChallenge : Object, SecureCoding {
  init(protectionSpace space: URLProtectionSpace, proposedCredential credential: URLCredential?, previousFailureCount: Int, failureResponse response: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: URLProtectionSpace { get }
  @NSCopying var proposedCredential: URLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: URLResponse? { get }
  @NSCopying var error: Error? { get }
  var sender: URLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
