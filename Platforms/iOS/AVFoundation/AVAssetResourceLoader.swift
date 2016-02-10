
@available(iOS 6.0, *)
class AVAssetResourceLoader : Object {
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(iOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(iOS 7.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(iOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(iOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(iOS 6.0, *)
class AVAssetResourceLoadingRequest : Object {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(iOS 7.0, *)
  var isCancelled: Bool { get }
  @available(iOS 7.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(iOS 7.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(iOS 7.0, *)
  @NSCopying var response: URLResponse?
  @available(iOS 7.0, *)
  @NSCopying var redirect: URLRequest?
  @available(iOS 7.0, *)
  func finishLoading()
  func finishLoadingWithError(error: Error?)
}
@available(iOS 8.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(iOS 7.0, *)
class AVAssetResourceLoadingContentInformationRequest : Object {
  var contentType: String?
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(iOS 8.0, *)
  @NSCopying var renewalDate: Date?
}
@available(iOS 7.0, *)
class AVAssetResourceLoadingDataRequest : Object {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(iOS 9.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respondWith(data: Data)
}
extension AVAssetResourceLoader {
  @available(iOS 9.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestDataFor(app appIdentifier: Data, contentIdentifier: Data, options: [String : AnyObject]? = [:]) throws -> Data
  @available(iOS 9.0, *)
  func persistentContentKeyFrom(keyVendorResponse keyVendorResponse: Data, options: [String : AnyObject]? = [:], error outError: ErrorPointer) -> Data
}
@available(iOS 9.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
}
