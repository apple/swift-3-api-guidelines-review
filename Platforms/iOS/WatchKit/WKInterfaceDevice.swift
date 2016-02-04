
class WKInterfaceDevice : NSObject {
  class func currentDevice() -> WKInterfaceDevice
  @available(iOS 8.2, *)
  func addCachedImage(image: UIImage, name: String) -> Bool
  @available(iOS 8.2, *)
  func addCachedImageWithData(imageData: NSData, name: String) -> Bool
  @available(iOS 8.2, *)
  func removeCachedImageWithName(name: String)
  @available(iOS 8.2, *)
  func removeAllCachedImages()
  @available(iOS 8.2, *)
  var cachedImages: [String : NSNumber] { get }
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  @available(iOS 9.0, *)
  var systemVersion: String { get }
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var model: String { get }
  @available(iOS 9.0, *)
  var localizedModel: String { get }
  @available(iOS 9.0, *)
  var systemName: String { get }
  init()
}
