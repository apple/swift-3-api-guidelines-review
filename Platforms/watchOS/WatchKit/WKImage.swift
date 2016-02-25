
@available(watchOS 2.0, *)
class WKImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(image image: UIImage)
  convenience init(imageData imageData: NSData)
  convenience init(imageName imageName: String)
  var image: UIImage? { get }
  var imageData: NSData? { get }
  var imageName: String? { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
