
enum AVAssetWriterStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case writing
  case completed
  case failed
  case cancelled
}
@available(OSX 10.7, *)
class AVAssetWriter : Object {
  init(url outputURL: URL, fileType outputFileType: String) throws
  @NSCopying var outputURL: URL { get }
  var outputFileType: String { get }
  var availableMediaTypes: [String] { get }
  var status: AVAssetWriterStatus { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(OSX 10.10, *)
  @NSCopying var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApplyOutputSettings(outputSettings: [String : AnyObject]?, forMediaType mediaType: String) -> Bool
  func canAddInput(input: AVAssetWriterInput) -> Bool
  func addInput(input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSession(atSourceTime startTime: CMTime)
  func endSession(atSourceTime endTime: CMTime)
  func cancelWriting()
  @available(OSX 10.9, *)
  func finishWriting(completionHandler handler: () -> Void)
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  var overallDurationHint: CMTime
  @available(OSX 10.7, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(OSX 10.9, *)
  func canAddInputGroup(inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(OSX 10.9, *)
  func addInputGroup(inputGroup: AVAssetWriterInputGroup)
  @available(OSX 10.9, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(OSX 10.9, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
