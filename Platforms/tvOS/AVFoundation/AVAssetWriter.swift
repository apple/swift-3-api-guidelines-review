
enum AVAssetWriterStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Writing
  case Completed
  case Failed
  case Cancelled
}
@available(tvOS 4.1, *)
class AVAssetWriter : Object {
  init(url outputURL: URL, fileType outputFileType: String) throws
  @NSCopying var outputURL: URL { get }
  var outputFileType: String { get }
  var availableMediaTypes: [String] { get }
  var status: AVAssetWriterStatus { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(tvOS 8.0, *)
  @NSCopying var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApplyOutputSettings(outputSettings: [String : AnyObject]?, forMediaType mediaType: String) -> Bool
  func canAddInput(input: AVAssetWriterInput) -> Bool
  func addInput(input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSessionAtSourceTime(startTime: CMTime)
  func endSessionAtSourceTime(endTime: CMTime)
  func cancelWriting()
  @available(tvOS 6.0, *)
  func finishWriting(completionHandler handler: () -> Void)
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  var overallDurationHint: CMTime
  @available(tvOS 4.3, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(tvOS 7.0, *)
  func canAddInputGroup(inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(tvOS 7.0, *)
  func addInputGroup(inputGroup: AVAssetWriterInputGroup)
  @available(tvOS 7.0, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(tvOS 7.0, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
