
@available(watchOS 2.0, *)
class HKSourceRevision : NSObject, NSSecureCoding, NSCopying {
  var source: HKSource { get }
  var version: String? { get }
  init(source source: HKSource, version version: String)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
