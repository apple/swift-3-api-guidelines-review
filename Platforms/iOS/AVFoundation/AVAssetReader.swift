
enum AVAssetReaderStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case reading
  case completed
  case failed
  case cancelled
}
@available(iOS 4.1, *)
class AVAssetReader : Object {
  init(asset: AVAsset) throws
  var asset: AVAsset { get }
  var status: AVAssetReaderStatus { get }
  var error: Error? { get }
  var timeRange: CMTimeRange
  var outputs: [AVAssetReaderOutput] { get }
  func canAddOutput(output: AVAssetReaderOutput) -> Bool
  func addOutput(output: AVAssetReaderOutput)
  func startReading() -> Bool
  func cancelReading()
}
