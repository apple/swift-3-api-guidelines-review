
@available(OSX 10.11, *)
let AVAssetExportPresetLowQuality: String
@available(OSX 10.11, *)
let AVAssetExportPresetMediumQuality: String
@available(OSX 10.11, *)
let AVAssetExportPresetHighestQuality: String
@available(OSX 10.7, *)
let AVAssetExportPreset640x480: String
@available(OSX 10.7, *)
let AVAssetExportPreset960x540: String
@available(OSX 10.7, *)
let AVAssetExportPreset1280x720: String
@available(OSX 10.7, *)
let AVAssetExportPreset1920x1080: String
@available(OSX 10.10, *)
let AVAssetExportPreset3840x2160: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4A: String
@available(OSX 10.7, *)
let AVAssetExportPresetPassthrough: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VCellular: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4ViPod: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4V480pSD: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VAppleTV: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VWiFi: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4V720pHD: String
@available(OSX 10.8, *)
let AVAssetExportPresetAppleM4V1080pHD: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleProRes422LPCM: String
enum AVAssetExportSessionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case waiting
  case exporting
  case completed
  case failed
  case cancelled
}
@available(OSX 10.7, *)
class AVAssetExportSession : Object {
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  @available(OSX 10.8, *)
  var asset: AVAsset { get }
  var outputFileType: String?
  @NSCopying var outputURL: URL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSessionStatus { get }
  var error: Error? { get }
  func exportAsynchronously(completionHandler handler: () -> Void)
  var progress: Float { get }
  func cancelExport()
}
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresetsCompatibleWith(asset: AVAsset) -> [String]
  @available(OSX 10.9, *)
  class func determineCompatibilityOfExportPreset(presetName: String, withAsset asset: AVAsset, outputFileType: String?, completionHandler handler: (Bool) -> Void)
}
extension AVAssetExportSession {
  var supportedFileTypes: [String] { get }
  @available(OSX 10.9, *)
  func determineCompatibleFileTypesWith(completionHandler handler: ([String]) -> Void)
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  @available(OSX 10.9, *)
  var estimatedOutputFileLength: Int64 { get }
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  @available(OSX 10.9, *)
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {
  @available(OSX 10.10, *)
  var canPerformMultiplePassesOverSourceMediaData: Bool
  @available(OSX 10.10, *)
  @NSCopying var directoryForTemporaryFiles: URL?
}
