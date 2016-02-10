
@available(tvOS 6.0, *)
class AVAssetResourceLoader : Object {
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : ObjectProtocol {
  @available(tvOS 6.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(tvOS 7.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(tvOS 6.0, *)
class AVAssetResourceLoadingRequest : Object {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(tvOS 7.0, *)
  var isCancelled: Bool { get }
  @available(tvOS 7.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(tvOS 7.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(tvOS 7.0, *)
  @NSCopying var response: URLResponse?
  @available(tvOS 7.0, *)
  @NSCopying var redirect: URLRequest?
  @available(tvOS 7.0, *)
  func finishLoading()
  func finishLoadingWithError(error: Error?)
}
@available(tvOS 8.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(tvOS 7.0, *)
class AVAssetResourceLoadingContentInformationRequest : Object {
  var contentType: String?
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(tvOS 8.0, *)
  @NSCopying var renewalDate: Date?
}
@available(tvOS 7.0, *)
class AVAssetResourceLoadingDataRequest : Object {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(tvOS 9.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(with data: Data)
}
extension AVAssetResourceLoader {
  @available(tvOS 9.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : AnyObject]? = [:]) throws -> Data
  @available(tvOS 9.0, *)
  func persistentContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : AnyObject]? = [:], error outError: ErrorPointer) -> Data
}
@available(tvOS 9.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
}
