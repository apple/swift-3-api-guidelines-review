
@available(OSX 10.9, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(_ delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(OSX 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(OSX 10.9, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancelLoadingRequest loadingRequest: AVAssetResourceLoadingRequest)
  @available(OSX 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForResponseToAuthenticationChallenge authenticationChallenge: NSURLAuthenticationChallenge) -> Bool
  @available(OSX 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancelAuthenticationChallenge authenticationChallenge: NSURLAuthenticationChallenge)
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: NSURLRequest { get }
  var finished: Bool { get }
  @available(OSX 10.9, *)
  var cancelled: Bool { get }
  @available(OSX 10.9, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(OSX 10.9, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(OSX 10.9, *)
  @NSCopying var response: NSURLResponse?
  @available(OSX 10.9, *)
  @NSCopying var redirect: NSURLRequest?
  @available(OSX 10.9, *)
  func finishLoading()
  func finishLoadingWithError(_ error: NSError?)
}
@available(OSX 10.10, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  var contentLength: Int64
  var byteRangeAccessSupported: Bool
  @available(OSX 10.10, *)
  @NSCopying var renewalDate: NSDate?
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(OSX 10.11, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respondWithData(_ data: NSData)
}
extension AVAssetResourceLoader {
  @available(OSX 10.11, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestDataForApp(_ appIdentifier: NSData, contentIdentifier contentIdentifier: NSData, options options: [String : AnyObject]?) throws -> NSData
}
extension AVAssetResourceLoadingRequest {
}
