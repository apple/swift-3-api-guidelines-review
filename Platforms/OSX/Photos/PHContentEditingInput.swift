
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
