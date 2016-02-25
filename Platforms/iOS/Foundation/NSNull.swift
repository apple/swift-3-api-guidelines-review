
class NSNull : NSObject, NSCopying, NSSecureCoding {
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
