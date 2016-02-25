
@available(tvOS 9.0, *)
class TVContentIdentifier : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier identifier: String, container container: TVContentIdentifier?)
  init?(coder coder: NSCoder)
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
