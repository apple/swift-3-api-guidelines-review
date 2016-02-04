
@available(OSX 10.10, *)
class CKAsset : Object {
  init(fileURL: URL)
  @NSCopying var fileURL: URL { get }
}
