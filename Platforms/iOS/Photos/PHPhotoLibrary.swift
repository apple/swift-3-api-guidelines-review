
@available(iOS 8.0, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 8.0, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  func photoLibraryDidChange(_ changeInstance: PHChange)
}
@available(iOS 8.0, *)
class PHPhotoLibrary : NSObject {
  class func sharedPhotoLibrary() -> PHPhotoLibrary
  class func authorizationStatus() -> PHAuthorizationStatus
  class func requestAuthorization(_ handler: (PHAuthorizationStatus) -> Void)
  func performChanges(_ changeBlock: dispatch_block_t, completionHandler completionHandler: ((Bool, NSError?) -> Void)?)
  func performChangesAndWait(_ changeBlock: dispatch_block_t) throws
  func registerChangeObserver(_ observer: PHPhotoLibraryChangeObserver)
  func unregisterChangeObserver(_ observer: PHPhotoLibraryChangeObserver)
}
