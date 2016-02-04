
@available(tvOS 9.0, *)
class TVContentIdentifier : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier: String, container: TVContentIdentifier?)
  init?(coder: NSCoder)
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
