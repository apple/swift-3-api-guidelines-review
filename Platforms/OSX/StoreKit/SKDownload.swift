
struct SKDownloadState : RawRepresentable, Equatable {
  init(_ rawValue: Int)
  init(rawValue: Int)
  var rawValue: Int
}
var SKDownloadStateWaiting: SKDownloadState { get }
var SKDownloadStateActive: SKDownloadState { get }
var SKDownloadStatePaused: SKDownloadState { get }
var SKDownloadStateFinished: SKDownloadState { get }
var SKDownloadStateFailed: SKDownloadState { get }
var SKDownloadStateCancelled: SKDownloadState { get }
@available(OSX 10.8, *)
class SKDownload : Object {
  var contentIdentifier: String { get }
  var state: SKDownloadState { get }
  @NSCopying var contentURL: URL? { get }
  var progress: Float { get }
  @NSCopying var error: Error? { get }
  var timeRemaining: TimeInterval { get }
  @NSCopying var contentLength: Number { get }
  var contentVersion: String? { get }
  var transaction: SKPaymentTransaction? { get }
  class func contentURLForProductID(productID: String) -> URL?
  class func deleteContentForProductID(productID: String)
  init()
}
