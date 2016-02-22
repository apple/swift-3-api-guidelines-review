
enum AVAssetReaderStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case reading
  case completed
  case failed
  case cancelled
}
@available(OSX 10.7, *)
class AVAssetReader : NSObject {
  init(asset asset: AVAsset) throws
  var asset: AVAsset { get }
  var status: AVAssetReaderStatus { get }
  var error: NSError? { get }
  var timeRange: CMTimeRange
  var outputs: [AVAssetReaderOutput] { get }
  func canAddOutput(_ output: AVAssetReaderOutput) -> Bool
  func addOutput(_ output: AVAssetReaderOutput)
  func startReading() -> Bool
  func cancelReading()
}
