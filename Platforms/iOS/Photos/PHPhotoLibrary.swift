
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
protocol PHPhotoLibraryChangeObserver : ObjectProtocol {
  func photoLibraryDidChange(changeInstance: PHChange)
}
@available(iOS 8.0, *)
class PHPhotoLibrary : Object {
  class func shared() -> PHPhotoLibrary
  class func authorizationStatus() -> PHAuthorizationStatus
  class func requestAuthorization(handler: (PHAuthorizationStatus) -> Void)
  func performChanges(changeBlock: dispatch_block_t, completionHandler: ((Bool, Error?) -> Void)? = nil)
  func performChangesAndWait(changeBlock: dispatch_block_t) throws
  func register(observer: PHPhotoLibraryChangeObserver)
  func unregisterChangeObserver(observer: PHPhotoLibraryChangeObserver)
  init()
}
