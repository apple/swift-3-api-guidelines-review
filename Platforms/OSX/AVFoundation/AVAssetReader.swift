
enum AVAssetReaderStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Reading
  case Completed
  case Failed
  case Cancelled
}
@available(OSX 10.7, *)
class AVAssetReader : NSObject {
  init(asset: AVAsset) throws
  var asset: AVAsset { get }
  var status: AVAssetReaderStatus { get }
  var error: NSError? { get }
  var timeRange: CMTimeRange
  var outputs: [AVAssetReaderOutput] { get }
  func canAddOutput(output: AVAssetReaderOutput) -> Bool
  func addOutput(output: AVAssetReaderOutput)
  func startReading() -> Bool
  func cancelReading()
}
