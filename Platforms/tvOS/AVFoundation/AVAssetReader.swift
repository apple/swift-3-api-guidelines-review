
enum AVAssetReaderStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Reading
  case Completed
  case Failed
  case Cancelled
}
@available(tvOS 4.1, *)
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
