
@available(OSX 10.9, *)
class AVAssetResourceLoader : Object {
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : ObjectProtocol {
  @available(OSX 10.9, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(OSX 10.9, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingRequest : Object {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(OSX 10.9, *)
  var isCancelled: Bool { get }
  @available(OSX 10.9, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(OSX 10.9, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(OSX 10.9, *)
  @NSCopying var response: URLResponse?
  @available(OSX 10.9, *)
  @NSCopying var redirect: URLRequest?
  @available(OSX 10.9, *)
  func finishLoading()
  func finishLoadingWithError(error: Error?)
}
@available(OSX 10.10, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingContentInformationRequest : Object {
  var contentType: String?
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(OSX 10.10, *)
  @NSCopying var renewalDate: Date?
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingDataRequest : Object {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(OSX 10.11, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(withData data: Data)
}
extension AVAssetResourceLoader {
  @available(OSX 10.11, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : AnyObject]? = [:]) throws -> Data
}
extension AVAssetResourceLoadingRequest {
}
