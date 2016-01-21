
@available(OSX 10.11, *)
class PHAdjustmentData : Object {
  init(formatIdentifier: String, formatVersion: String, data: Data)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: Data { get }
  init()
}
@available(OSX 10.11, *)
class PHContentEditingInput : Object {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @NSCopying var creationDate: Date? { get }
  var uniformTypeIdentifier: String? { get }
  var adjustmentData: PHAdjustmentData { get }
  @NSCopying var fullSizeImageURL: URL? { get }
  var fullSizeImageOrientation: Int32 { get }
  init()
}
@available(OSX 10.11, *)
class PHContentEditingOutput : Object {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData
  @NSCopying var renderedContentURL: URL { get }
  init()
}
@available(OSX 10.11, *)
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Image
  case Video
  case Audio
}
@available(OSX 10.11, *)
struct PHAssetMediaSubtype : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PHAssetMediaSubtype { get }
  static var PhotoPanorama: PHAssetMediaSubtype { get }
  static var PhotoHDR: PHAssetMediaSubtype { get }
  static var PhotoScreenshot: PHAssetMediaSubtype { get }
  static var VideoStreamed: PHAssetMediaSubtype { get }
  static var VideoHighFrameRate: PHAssetMediaSubtype { get }
  static var VideoTimelapse: PHAssetMediaSubtype { get }
}
