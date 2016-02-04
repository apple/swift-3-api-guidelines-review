
@available(tvOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 4.0, *)
  var identifier: String { get }
  @available(tvOS 7.0, *)
  var notifyOnEntry: Bool
  @available(tvOS 7.0, *)
  var notifyOnExit: Bool
  init()
  @available(tvOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
