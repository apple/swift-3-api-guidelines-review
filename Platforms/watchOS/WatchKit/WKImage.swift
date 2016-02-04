
@available(watchOS 2.0, *)
class WKImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: NSData)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: NSData? { get }
  var imageName: String? { get }
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
