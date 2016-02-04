
class MLMediaObject : Object {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var identifier: String { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var mediaType: MLMediaType { get }
  var contentType: String? { get }
  var name: String? { get }
  @NSCopying var url: URL? { get }
  @NSCopying var originalURL: URL? { get }
  var fileSize: Int { get }
  @NSCopying var modificationDate: Date? { get }
  @NSCopying var thumbnailURL: URL? { get }
  init()
}
