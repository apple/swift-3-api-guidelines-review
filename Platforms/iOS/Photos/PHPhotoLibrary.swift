
@available(iOS 8.0, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 8.0, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  func photoLibraryDidChange(changeInstance: PHChange)
}
@available(iOS 8.0, *)
class PHPhotoLibrary : NSObject {
  class func sharedPhotoLibrary() -> PHPhotoLibrary
  class func authorizationStatus() -> PHAuthorizationStatus
  class func requestAuthorization(handler: (PHAuthorizationStatus) -> Void)
  func performChanges(changeBlock: dispatch_block_t, completionHandler: ((Bool, NSError?) -> Void)?)
  func performChangesAndWait(changeBlock: dispatch_block_t) throws
  func registerChangeObserver(observer: PHPhotoLibraryChangeObserver)
  func unregisterChangeObserver(observer: PHPhotoLibraryChangeObserver)
  init()
}
