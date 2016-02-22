
@available(tvOS 8.0, *)
class CKAsset : NSObject {
  init(fileURL: NSURL)
  @NSCopying var fileURL: NSURL { get }
}
